#include "mgos.h"
#include "mgos_mqtt.h"
#include "mgos_init.h"
#include "mgos_sys_config.h"
#include "mgos_neopixel.h"
#include "mgos_rpc.h"

#ifdef MGOS_HAVE_WIFI
#include "mgos_wifi.h"
#endif
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

static void timer_cb(void *arg) {
  static bool s_tick_tock = false;
  LOG(LL_INFO,
      ("%s uptime: %.2lf, RAM: %lu, %lu free", (s_tick_tock ? "Tick" : "Tock"),
       mgos_uptime(), (unsigned long) mgos_get_heap_size(),
       (unsigned long) mgos_get_free_heap_size()));
  s_tick_tock = !s_tick_tock;
  (void) arg;
}

struct mgos_neopixel *mystrip;
const uint8_t neopixel_pin=15;
const uint8_t neopixel_led=150;
uint8_t modulo=10;
int red = 0, green = 0, blue=0;
static bool rpcset=false, stripProgrammed=false;
const bool debug=false;

void sysconfigset(){
  mgos_sys_config_set_red(red); // Set numeric value
  mgos_sys_config_set_green(green);
  mgos_sys_config_set_blue(blue);  
  mgos_sys_config_set_rpcset(rpcset);
  char *err = NULL;
  //save_cfg(&mgos_sys_config, &err); /* Writes conf9.json */
  mgos_sys_config_save(&mgos_sys_config, false, &err);
  if(debug) printf("Saving configuration: %s\n", err ? err : "no error");
  free(err);
}

void sysconfigget(){
  red=mgos_sys_config_get_red();
  green=mgos_sys_config_get_green();
  blue=mgos_sys_config_get_blue();
  rpcset=mgos_sys_config_get_rpcset();
  if(debug) printf("Sysconfig get OK red=%i,green=%i,blue=%i \n", red,green,blue);
}

static void net_cb(int ev, void *evd, void *arg) {
  switch (ev) {
    case MGOS_NET_EV_DISCONNECTED:
      LOG(LL_INFO, ("%s", "Net disconnected"));
      break;
    case MGOS_NET_EV_CONNECTING:
      LOG(LL_INFO, ("%s", "Net connecting..."));
      break;
    case MGOS_NET_EV_CONNECTED:
      LOG(LL_INFO, ("%s", "Net connected"));
      break;
    case MGOS_NET_EV_IP_ACQUIRED:
      LOG(LL_INFO, ("%s", "Net got IP address"));
      break;
  }

  (void) evd;
  (void) arg;
}

//RPC SET
static void setcol_cb(struct mg_rpc_request_info *ri, void *cb_arg,
                   struct mg_rpc_frame_info *fi, struct mg_str args) {
  if (json_scanf(args.p, args.len, ri->args_fmt, &red, &green, &blue) == 3) {
    mg_rpc_send_responsef(ri, "OK");
    //red=red_cb; green=green_cb; blue=blue_cb;
    rpcset=true; stripProgrammed=false;
    sysconfigset();
  } else {
    mg_rpc_send_errorf(ri, -1, "Bad request. ");
  }
  (void) cb_arg;
  (void) fi;
}

static void rpcclear_cb(struct mg_rpc_request_info *ri, void *cb_arg,
                   struct mg_rpc_frame_info *fi, struct mg_str args) {
    mg_rpc_send_responsef(ri, "RPC_Cleared_OK");
    rpcset=false; stripProgrammed=false;
    sysconfigset();
                   }


#ifdef MGOS_HAVE_WIFI
static void wifi_cb(int ev, void *evd, void *arg) {
  switch (ev) {
    case MGOS_WIFI_EV_STA_DISCONNECTED: {
      struct mgos_wifi_sta_disconnected_arg *da =
          (struct mgos_wifi_sta_disconnected_arg *) evd;
      LOG(LL_INFO, ("WiFi STA disconnected, reason %d", da->reason));
      break;
    }
    case MGOS_WIFI_EV_STA_CONNECTING:
      LOG(LL_INFO, ("WiFi STA connecting %p", arg));
      break;
    case MGOS_WIFI_EV_STA_CONNECTED:
      LOG(LL_INFO, ("WiFi STA connected %p", arg));
      break;
    case MGOS_WIFI_EV_STA_IP_ACQUIRED:
      LOG(LL_INFO, ("WiFi STA IP acquired %p", arg));
      break;
    case MGOS_WIFI_EV_AP_STA_CONNECTED: {
      struct mgos_wifi_ap_sta_connected_arg *aa =
          (struct mgos_wifi_ap_sta_connected_arg *) evd;
      LOG(LL_INFO, ("WiFi AP STA connected MAC %02x:%02x:%02x:%02x:%02x:%02x",
                    aa->mac[0], aa->mac[1], aa->mac[2], aa->mac[3], aa->mac[4],
                    aa->mac[5]));
      break;
    }
    case MGOS_WIFI_EV_AP_STA_DISCONNECTED: {
      struct mgos_wifi_ap_sta_disconnected_arg *aa =
          (struct mgos_wifi_ap_sta_disconnected_arg *) evd;
      LOG(LL_INFO,
          ("WiFi AP STA disconnected MAC %02x:%02x:%02x:%02x:%02x:%02x",
           aa->mac[0], aa->mac[1], aa->mac[2], aa->mac[3], aa->mac[4],
           aa->mac[5]));
      break;
    }
  }
  (void) arg;
}
#endif /* MGOS_HAVE_WIFI */

static void cloud_cb(int ev, void *evd, void *arg) {
  struct mgos_cloud_arg *ca = (struct mgos_cloud_arg *) evd;
  switch (ev) {
    case MGOS_EVENT_CLOUD_CONNECTED: {
      LOG(LL_INFO, ("Cloud connected (%d)", ca->type));
      break;
    }
    case MGOS_EVENT_CLOUD_DISCONNECTED: {
      LOG(LL_INFO, ("Cloud disconnected (%d)", ca->type));
      break;
    }
  }

  (void) arg;
}


uint8_t k=255,b=0,j=0;
  void neopixelRun(){
    if(rpcset && (!stripProgrammed)) {
      mgos_neopixel_clear(mystrip); 
      for(uint8_t i=0;i<neopixel_led;i++){
      mgos_neopixel_set(mystrip, i, red, green, blue);
      mgos_neopixel_show(mystrip);
      stripProgrammed=true;
      }
    }
 if(!rpcset){
    for(uint8_t i=0;i<neopixel_led;i++){
      j++;k--;b++;
      mgos_neopixel_set(mystrip, i, j, k, b);
        if((i%modulo)==0){
          mgos_neopixel_set(mystrip, i, 255, 0, 0); //red
            i++;
           mgos_neopixel_set(mystrip, i, 0, 0, 255); //blue
        }
      mgos_neopixel_show(mystrip);
      //mgos_msleep(5);
     // mgos_neopixel_clear(mystrip);   
      if(k==0) k=255;
      if(b==255) b=0;
     
      if(modulo==30) modulo=10;
   }
   modulo++;
   }
  }


//INIT FUNCT HERE
enum mgos_app_init_result mgos_app_init(void) {
  mystrip= mgos_neopixel_create(neopixel_pin, neopixel_led, MGOS_NEOPIXEL_ORDER_GRB);
  sysconfigget();
  neopixelRun();

//rpc set handler
mg_rpc_add_handler(mgos_rpc_get_global(), "Setcol", "{red: %u, green: %u, blue: %u}", setcol_cb, NULL);

//rpcclear handler
mg_rpc_add_handler(mgos_rpc_get_global(), "Rpcclear", "", rpcclear_cb, NULL);

  //NEOPIXEL
   mgos_set_timer(1000, MGOS_TIMER_REPEAT, neopixelRun, NULL);



  /* Network connectivity events */
  mgos_event_add_group_handler(MGOS_EVENT_GRP_NET, net_cb, NULL);

#ifdef MGOS_HAVE_WIFI
  mgos_event_add_group_handler(MGOS_WIFI_EV_BASE, wifi_cb, NULL);
#endif

  mgos_event_add_handler(MGOS_EVENT_CLOUD_CONNECTED, cloud_cb, NULL);
  mgos_event_add_handler(MGOS_EVENT_CLOUD_DISCONNECTED, cloud_cb, NULL);

  return MGOS_APP_INIT_SUCCESS;
}
