APP=demoC_Neopixel
APP_BIN_LIBS=/home/jirka2/programming/demoC_Neopixel/build/objs/libmbedtls-esp32-2.16.0.a /home/jirka2/programming/demoC_Neopixel/build/objs/libmongoose-esp32-2.16.0.a /home/jirka2/programming/demoC_Neopixel/build/objs/libota-common-esp32-2.16.0.a /home/jirka2/programming/demoC_Neopixel/build/objs/libota-http-client-esp32-2.16.0.a /home/jirka2/programming/demoC_Neopixel/build/objs/libota-shadow-esp32-2.16.0.a /home/jirka2/programming/demoC_Neopixel/build/objs/libdash-esp32-2.16.0.a /home/jirka2/programming/demoC_Neopixel/build/objs/libota-http-server-esp32-2.16.0.a /home/jirka2/programming/demoC_Neopixel/build/objs/librpc-service-ota-esp32-2.16.0.a
APP_CFLAGS=-DLFS_NO_DEBUG=1 -DMBEDTLS_ECP_ATCA=1 -DMBEDTLS_FREE_CERT_CHAIN=1 -DMBEDTLS_USER_CONFIG_FILE=\"mbedtls_platform_config.h\" -DMBEDTLS_X509_CA_CHAIN_ON_DISK=1 -DMGOS=1 -DMGOS_DNS_SD_HIDE_ADDITIONAL_INFO=0 -DMGOS_ENABLE_FILE_UPLOAD=1 -DMGOS_ENABLE_RPC_CHANNEL_HTTP=1 -DMGOS_ENABLE_SYS_SERVICE=1 -DMGOS_ENABLE_WEB_CONFIG=0 -DMGOS_ETH_PHY_LAN87x0=1 -DMGOS_HAVE_ADC=1 -DMGOS_HAVE_ATCA=1 -DMGOS_HAVE_AWS=1 -DMGOS_HAVE_AZURE=1 -DMGOS_HAVE_BT_COMMON=1 -DMGOS_HAVE_BT_SERVICE_DEBUG=1 -DMGOS_HAVE_CA_BUNDLE=1 -DMGOS_HAVE_CORE=1 -DMGOS_HAVE_DASH=1 -DMGOS_HAVE_DEMO_BUNDLE=1 -DMGOS_HAVE_DHT=1 -DMGOS_HAVE_DNS_SD=1 -DMGOS_HAVE_ETHERNET=1 -DMGOS_HAVE_FREERTOS=1 -DMGOS_HAVE_FSTAB=1 -DMGOS_HAVE_GCP=1 -DMGOS_HAVE_HTTP_SERVER=1 -DMGOS_HAVE_I2C=1 -DMGOS_HAVE_LWIP=1 -DMGOS_HAVE_MBEDTLS=1 -DMGOS_HAVE_MONGOOSE=1 -DMGOS_HAVE_MQTT=1 -DMGOS_HAVE_NEOPIXEL=1 -DMGOS_HAVE_OTA_COMMON=1 -DMGOS_HAVE_OTA_HTTP_CLIENT=1 -DMGOS_HAVE_OTA_HTTP_SERVER=1 -DMGOS_HAVE_OTA_SHADOW=1 -DMGOS_HAVE_PROVISION=1 -DMGOS_HAVE_RPC_AZURE=1 -DMGOS_HAVE_RPC_COMMON=1 -DMGOS_HAVE_RPC_GATTS=1 -DMGOS_HAVE_RPC_GCP=1 -DMGOS_HAVE_RPC_LOOPBACK=1 -DMGOS_HAVE_RPC_MQTT=1 -DMGOS_HAVE_RPC_SERVICE_ATCA=1 -DMGOS_HAVE_RPC_SERVICE_CONFIG=1 -DMGOS_HAVE_RPC_SERVICE_FS=1 -DMGOS_HAVE_RPC_SERVICE_GPIO=1 -DMGOS_HAVE_RPC_SERVICE_OTA=1 -DMGOS_HAVE_RPC_SERVICE_WIFI=1 -DMGOS_HAVE_RPC_UART=1 -DMGOS_HAVE_RPC_WS=1 -DMGOS_HAVE_SHADOW=1 -DMGOS_HAVE_SNTP=1 -DMGOS_HAVE_SPI=1 -DMGOS_HAVE_VFS_COMMON=1 -DMGOS_HAVE_VFS_DEV_SPI_FLASH=1 -DMGOS_HAVE_VFS_FS_LFS=1 -DMGOS_HAVE_VFS_FS_SPIFFS=1 -DMGOS_HAVE_WATSON=1 -DMGOS_HAVE_WIFI=1 -DMGOS_HAVE_ZZ_BOARDS=1 -DMGOS_LFS1_COMPAT=0 -DMGOS_WIFI_ENABLE_AP_STA=1 -DMG_ENABLE_DNS=1 -DMG_ENABLE_DNS_SERVER=1 -DMG_ENABLE_MQTT=1 -DMG_ENABLE_SNTP=1 -DMG_ENABLE_SSL=1 -DMG_LWIP=1 -DMG_SSL_IF=MG_SSL_IF_MBEDTLS -DMG_SSL_IF_MBEDTLS_FREE_CERTS=1
APP_CONF_SCHEMA=/home/jirka2/programming/demoC_Neopixel/build/gen/mos_conf_schema.yml
APP_CXXFLAGS=-DLFS_NO_DEBUG=1 -DMBEDTLS_ECP_ATCA=1 -DMBEDTLS_FREE_CERT_CHAIN=1 -DMBEDTLS_USER_CONFIG_FILE=\"mbedtls_platform_config.h\" -DMBEDTLS_X509_CA_CHAIN_ON_DISK=1 -DMGOS=1 -DMGOS_DNS_SD_HIDE_ADDITIONAL_INFO=0 -DMGOS_ENABLE_FILE_UPLOAD=1 -DMGOS_ENABLE_RPC_CHANNEL_HTTP=1 -DMGOS_ENABLE_SYS_SERVICE=1 -DMGOS_ENABLE_WEB_CONFIG=0 -DMGOS_ETH_PHY_LAN87x0=1 -DMGOS_HAVE_ADC=1 -DMGOS_HAVE_ATCA=1 -DMGOS_HAVE_AWS=1 -DMGOS_HAVE_AZURE=1 -DMGOS_HAVE_BT_COMMON=1 -DMGOS_HAVE_BT_SERVICE_DEBUG=1 -DMGOS_HAVE_CA_BUNDLE=1 -DMGOS_HAVE_CORE=1 -DMGOS_HAVE_DASH=1 -DMGOS_HAVE_DEMO_BUNDLE=1 -DMGOS_HAVE_DHT=1 -DMGOS_HAVE_DNS_SD=1 -DMGOS_HAVE_ETHERNET=1 -DMGOS_HAVE_FREERTOS=1 -DMGOS_HAVE_FSTAB=1 -DMGOS_HAVE_GCP=1 -DMGOS_HAVE_HTTP_SERVER=1 -DMGOS_HAVE_I2C=1 -DMGOS_HAVE_LWIP=1 -DMGOS_HAVE_MBEDTLS=1 -DMGOS_HAVE_MONGOOSE=1 -DMGOS_HAVE_MQTT=1 -DMGOS_HAVE_NEOPIXEL=1 -DMGOS_HAVE_OTA_COMMON=1 -DMGOS_HAVE_OTA_HTTP_CLIENT=1 -DMGOS_HAVE_OTA_HTTP_SERVER=1 -DMGOS_HAVE_OTA_SHADOW=1 -DMGOS_HAVE_PROVISION=1 -DMGOS_HAVE_RPC_AZURE=1 -DMGOS_HAVE_RPC_COMMON=1 -DMGOS_HAVE_RPC_GATTS=1 -DMGOS_HAVE_RPC_GCP=1 -DMGOS_HAVE_RPC_LOOPBACK=1 -DMGOS_HAVE_RPC_MQTT=1 -DMGOS_HAVE_RPC_SERVICE_ATCA=1 -DMGOS_HAVE_RPC_SERVICE_CONFIG=1 -DMGOS_HAVE_RPC_SERVICE_FS=1 -DMGOS_HAVE_RPC_SERVICE_GPIO=1 -DMGOS_HAVE_RPC_SERVICE_OTA=1 -DMGOS_HAVE_RPC_SERVICE_WIFI=1 -DMGOS_HAVE_RPC_UART=1 -DMGOS_HAVE_RPC_WS=1 -DMGOS_HAVE_SHADOW=1 -DMGOS_HAVE_SNTP=1 -DMGOS_HAVE_SPI=1 -DMGOS_HAVE_VFS_COMMON=1 -DMGOS_HAVE_VFS_DEV_SPI_FLASH=1 -DMGOS_HAVE_VFS_FS_LFS=1 -DMGOS_HAVE_VFS_FS_SPIFFS=1 -DMGOS_HAVE_WATSON=1 -DMGOS_HAVE_WIFI=1 -DMGOS_HAVE_ZZ_BOARDS=1 -DMGOS_LFS1_COMPAT=0 -DMGOS_WIFI_ENABLE_AP_STA=1 -DMG_ENABLE_DNS=1 -DMG_ENABLE_DNS_SERVER=1 -DMG_ENABLE_MQTT=1 -DMG_ENABLE_SNTP=1 -DMG_ENABLE_SSL=1 -DMG_LWIP=1 -DMG_SSL_IF=MG_SSL_IF_MBEDTLS -DMG_SSL_IF_MBEDTLS_FREE_CERTS=1
APP_FS_FILES=/home/jirka2/programming/demoC_Neopixel/deps/ca-bundle/fs/ca.pem /home/jirka2/programming/demoC_Neopixel/fs/index.html
APP_INCLUDES=/home/jirka2/programming/demoC_Neopixel/deps/adc/include /home/jirka2/programming/demoC_Neopixel/deps/adc/include/esp32 /home/jirka2/programming/demoC_Neopixel/deps/freertos/include /home/jirka2/programming/demoC_Neopixel/deps/freertos/include/esp32 /home/jirka2/programming/demoC_Neopixel/deps/i2c/include /home/jirka2/programming/demoC_Neopixel/deps/atca/include /home/jirka2/programming/demoC_Neopixel/deps/atca/cryptoauthlib/lib /home/jirka2/programming/demoC_Neopixel/deps/mbedtls/include /home/jirka2/programming/demoC_Neopixel/deps/mbedtls/include/esp32 /home/jirka2/programming/demoC_Neopixel/deps/mbedtls/mbedtls/include /home/jirka2/programming/demoC_Neopixel/deps/vfs-common/include /home/jirka2/programming/demoC_Neopixel/deps/vfs-common/include/esp32 /home/jirka2/programming/demoC_Neopixel/deps/mongoose/include /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-lfs/include /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-lfs/littlefs /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-lfs/littlefs1 /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-spiffs/include /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-spiffs/include/spiffs /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-spiffs/include/esp32 /home/jirka2/programming/demoC_Neopixel/deps/core/include /home/jirka2/programming/demoC_Neopixel/deps/core/include/esp32 /home/jirka2/programming/demoC_Neopixel/deps/mqtt/include /home/jirka2/programming/demoC_Neopixel/deps/shadow/include /home/jirka2/programming/demoC_Neopixel/deps/aws/include /home/jirka2/programming/demoC_Neopixel/deps/azure/include /home/jirka2/programming/demoC_Neopixel/deps/bt-common/include /home/jirka2/programming/demoC_Neopixel/deps/bt-common/include/esp32 /home/jirka2/programming/demoC_Neopixel/deps/ota-common/src /home/jirka2/programming/demoC_Neopixel/deps/ota-common/include /home/jirka2/programming/demoC_Neopixel/deps/ota-common/include/esp32 /home/jirka2/programming/demoC_Neopixel/deps/ota-http-client/include /home/jirka2/programming/demoC_Neopixel/deps/rpc-common/include /home/jirka2/programming/demoC_Neopixel/deps/rpc-ws/include /home/jirka2/programming/demoC_Neopixel/deps/dash/include /home/jirka2/programming/demoC_Neopixel/deps/dht/include /home/jirka2/programming/demoC_Neopixel/deps/http-server/include /home/jirka2/programming/demoC_Neopixel/deps/dns-sd/include /home/jirka2/programming/demoC_Neopixel/deps/gcp/include /home/jirka2/programming/demoC_Neopixel/deps/neopixel/include /home/jirka2/programming/demoC_Neopixel/deps/provision/include /home/jirka2/programming/demoC_Neopixel/deps/rpc-loopback/include /home/jirka2/programming/demoC_Neopixel/deps/rpc-mqtt/include /home/jirka2/programming/demoC_Neopixel/deps/rpc-service-config/include /home/jirka2/programming/demoC_Neopixel/deps/rpc-service-fs/include /home/jirka2/programming/demoC_Neopixel/deps/rpc-service-gpio/include /home/jirka2/programming/demoC_Neopixel/deps/rpc-service-ota/include /home/jirka2/programming/demoC_Neopixel/deps/wifi/include /home/jirka2/programming/demoC_Neopixel/deps/wifi/include/esp32 /home/jirka2/programming/demoC_Neopixel/deps/rpc-uart/include /home/jirka2/programming/demoC_Neopixel/deps/spi/include /home/jirka2/programming/demoC_Neopixel/deps/vfs-dev-spi-flash/include /home/jirka2/programming/demoC_Neopixel/deps/watson/include /home/jirka2/programming/demoC_Neopixel/include
APP_SOURCES=/home/jirka2/programming/demoC_Neopixel/src/main.c /home/jirka2/programming/demoC_Neopixel/build/gen/mgos_deps_init.c /home/jirka2/programming/demoC_Neopixel/deps/adc/src/esp32/esp32_adc.c /home/jirka2/programming/demoC_Neopixel/deps/freertos/src/mgos_freertos.c /home/jirka2/programming/demoC_Neopixel/deps/freertos/src/mgos_freertos_core_dump.c /home/jirka2/programming/demoC_Neopixel/deps/i2c/src/mgos_i2c_master.c /home/jirka2/programming/demoC_Neopixel/deps/i2c/src/esp32/esp32_i2c_master.c /home/jirka2/programming/demoC_Neopixel/deps/atca/src/mgos_atca.c /home/jirka2/programming/demoC_Neopixel/deps/atca/cryptoauthlib/lib/atca_cfgs.c /home/jirka2/programming/demoC_Neopixel/deps/atca/cryptoauthlib/lib/atca_command.c /home/jirka2/programming/demoC_Neopixel/deps/atca/cryptoauthlib/lib/atca_device.c /home/jirka2/programming/demoC_Neopixel/deps/atca/cryptoauthlib/lib/atca_iface.c /home/jirka2/programming/demoC_Neopixel/deps/atca/cryptoauthlib/lib/basic/atca_basic.c /home/jirka2/programming/demoC_Neopixel/deps/atca/cryptoauthlib/lib/basic/atca_helpers.c /home/jirka2/programming/demoC_Neopixel/deps/atca/cryptoauthlib/lib/host/atca_host.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-common/src/mgos_vfs.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-common/src/mgos_vfs_dev.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-common/src/mgos_vfs_internal.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-common/src/esp32/esp32_fs.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-common/src/esp32/esp32_fs_crypt.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-common/src/esp32/esp32_vfs_dev_partition.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-lfs/src/mgos_vfs_lfs.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-lfs/littlefs/lfs.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-lfs/littlefs/lfs_util.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-lfs/littlefs1/lfs1.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-lfs/littlefs1/lfs1_util.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-spiffs/src/mgos_vfs_fs_spiffs.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-spiffs/src/spiffs/spiffs_cache.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-spiffs/src/spiffs/spiffs_check.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-spiffs/src/spiffs/spiffs_gc.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-spiffs/src/spiffs/spiffs_hydrogen.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-fs-spiffs/src/spiffs/spiffs_nucleus.c /home/jirka2/programming/demoC_Neopixel/deps/core/src/mgos_core.c /home/jirka2/programming/demoC_Neopixel/deps/mqtt/src/mgos_mqtt.c /home/jirka2/programming/demoC_Neopixel/deps/shadow/src/mgos_shadow.c /home/jirka2/programming/demoC_Neopixel/deps/aws/src/mgos_aws.c /home/jirka2/programming/demoC_Neopixel/deps/aws/src/mgos_aws_greengrass.c /home/jirka2/programming/demoC_Neopixel/deps/aws/src/mgos_aws_shadow.c /home/jirka2/programming/demoC_Neopixel/deps/sntp/src/mgos_sntp.c /home/jirka2/programming/demoC_Neopixel/deps/azure/src/mgos_azure.c /home/jirka2/programming/demoC_Neopixel/deps/azure/src/mgos_azure_cm.c /home/jirka2/programming/demoC_Neopixel/deps/azure/src/mgos_azure_dm.c /home/jirka2/programming/demoC_Neopixel/deps/azure/src/mgos_azure_sas.c /home/jirka2/programming/demoC_Neopixel/deps/azure/src/mgos_azure_shadow.c /home/jirka2/programming/demoC_Neopixel/deps/bt-common/src/mgos_bt.c /home/jirka2/programming/demoC_Neopixel/deps/bt-common/src/mgos_bt_gap.c /home/jirka2/programming/demoC_Neopixel/deps/bt-common/src/mgos_bt_js.c /home/jirka2/programming/demoC_Neopixel/deps/bt-common/src/esp32/esp32_bt.c /home/jirka2/programming/demoC_Neopixel/deps/bt-common/src/esp32/esp32_bt_gap.c /home/jirka2/programming/demoC_Neopixel/deps/bt-common/src/esp32/esp32_bt_gattc.c /home/jirka2/programming/demoC_Neopixel/deps/bt-common/src/esp32/esp32_bt_gatts.c /home/jirka2/programming/demoC_Neopixel/deps/bt-service-debug/src/mgos_bt_svc_debug.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-common/src/mg_rpc.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-common/src/mg_rpc_channel.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-common/src/mg_rpc_channel_http.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-common/src/mgos_rpc.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-ws/src/mgos_rpc_channel_ws.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-ws/src/mgos_rpc_ws.c /home/jirka2/programming/demoC_Neopixel/deps/dht/src/mgos_dht.c /home/jirka2/programming/demoC_Neopixel/deps/http-server/src/mgos_http_server.c /home/jirka2/programming/demoC_Neopixel/deps/dns-sd/src/mgos_dns_sd.c /home/jirka2/programming/demoC_Neopixel/deps/dns-sd/src/mgos_mdns.c /home/jirka2/programming/demoC_Neopixel/deps/dns-sd/src/lwip/lwip_mdns.c /home/jirka2/programming/demoC_Neopixel/deps/ethernet/src/mgos_eth.c /home/jirka2/programming/demoC_Neopixel/deps/ethernet/src/esp32/esp32_eth.c /home/jirka2/programming/demoC_Neopixel/deps/fstab/src/mgos_fstab.c /home/jirka2/programming/demoC_Neopixel/deps/gcp/src/mgos_gcp.c /home/jirka2/programming/demoC_Neopixel/deps/neopixel/src/mgos_neopixel.c /home/jirka2/programming/demoC_Neopixel/deps/provision/src/mgos_provision.c /home/jirka2/programming/demoC_Neopixel/deps/provision/src/mgos_provision_btn.c /home/jirka2/programming/demoC_Neopixel/deps/provision/src/mgos_provision_led.c /home/jirka2/programming/demoC_Neopixel/deps/provision/src/mgos_provision_state.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-azure/src/mgos_rpc_channel_azure_dm.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-gatts/src/mgos_rpc_channel_gatts.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-gcp/src/mgos_rpc_channel_gcp.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-loopback/src/mg_rpc_channel_loopback.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-mqtt/src/mgos_rpc_channel_mqtt.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-service-atca/src/mgos_atca_service.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-service-config/src/mgos_service_config.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-service-fs/src/mgos_service_filesystem.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-service-gpio/src/mgos_gpio_service.c /home/jirka2/programming/demoC_Neopixel/deps/wifi/src/mgos_wifi.c /home/jirka2/programming/demoC_Neopixel/deps/wifi/src/mjs_wifi.c /home/jirka2/programming/demoC_Neopixel/deps/wifi/src/esp32/esp32_wifi.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-service-wifi/src/mgos_rpc_service_wifi.c /home/jirka2/programming/demoC_Neopixel/deps/rpc-uart/src/mgos_rpc_channel_uart.c /home/jirka2/programming/demoC_Neopixel/deps/spi/src/mgos_spi.c /home/jirka2/programming/demoC_Neopixel/deps/spi/src/mgos_spi_mjs.c /home/jirka2/programming/demoC_Neopixel/deps/spi/src/esp32/esp32_spi_master.c /home/jirka2/programming/demoC_Neopixel/deps/vfs-dev-spi-flash/src/mgos_vfs_dev_spi_flash.c /home/jirka2/programming/demoC_Neopixel/deps/watson/src/mgos_watson.c /home/jirka2/programming/demoC_Neopixel/deps/demo-bundle/src/mgos_demo_bundle.c
APP_VERSION=1.0
BOARD=
BUILD_DIR=/home/jirka2/programming/demoC_Neopixel/build/objs
ESP_IDF_EXTRA_COMPONENTS= bt
ESP_IDF_SDKCONFIG_OPTS= CONFIG_SUPPORT_STATIC_ALLOCATION=y  CONFIG_BT_ENABLED=y CONFIG_BLUEDROID_ENABLED=y CONFIG_BTC_TASK_STACK_SIZE=6144 CONFIG_BLUEDROID_MEM_DEBUG= CONFIG_CLASSIC_BT_ENABLED= CONFIG_BT_DRAM_RELEASE=y CONFIG_GATTS_ENABLE=y CONFIG_GATTC_ENABLE=y CONFIG_BLE_SMP_ENABLE=y CONFIG_BT_STACK_NO_LOG= CONFIG_BT_ACL_CONNECTIONS=4 CONFIG_BTDM_CONTROLLER_RUN_CPU=0 CONFIG_SMP_ENABLE=y CONFIG_BT_RESERVE_DRAM=0x10000  CONFIG_PPP_SUPPORT=y CONFIG_PPP_PAP_SUPPORT=y CONFIG_PPP_CHAP_SUPPORT=y CONFIG_PPP_MSCHAP_SUPPORT=y CONFIG_PPP_MPPE_SUPPORT=y 
FFI_SYMBOLS=
FS_STAGING_DIR=/home/jirka2/programming/demoC_Neopixel/build/fs
FW_DIR=/home/jirka2/programming/demoC_Neopixel/build/fw
GEN_DIR=/home/jirka2/programming/demoC_Neopixel/build/gen
MANIFEST_FINAL=/home/jirka2/programming/demoC_Neopixel/build/gen/mos_final.yml
MGOS=1
MGOS_ENABLE_SPI_GPIO=0
MGOS_HAVE_ADC=1
MGOS_HAVE_ATCA=1
MGOS_HAVE_AWS=1
MGOS_HAVE_AZURE=1
MGOS_HAVE_BT_COMMON=1
MGOS_HAVE_BT_SERVICE_DEBUG=1
MGOS_HAVE_CA_BUNDLE=1
MGOS_HAVE_CORE=1
MGOS_HAVE_DASH=1
MGOS_HAVE_DEMO_BUNDLE=1
MGOS_HAVE_DHT=1
MGOS_HAVE_DNS_SD=1
MGOS_HAVE_ETHERNET=1
MGOS_HAVE_FREERTOS=1
MGOS_HAVE_FSTAB=1
MGOS_HAVE_GCP=1
MGOS_HAVE_HTTP_SERVER=1
MGOS_HAVE_I2C=1
MGOS_HAVE_LWIP=1
MGOS_HAVE_MBEDTLS=1
MGOS_HAVE_MONGOOSE=1
MGOS_HAVE_MQTT=1
MGOS_HAVE_NEOPIXEL=1
MGOS_HAVE_OTA_COMMON=1
MGOS_HAVE_OTA_HTTP_CLIENT=1
MGOS_HAVE_OTA_HTTP_SERVER=1
MGOS_HAVE_OTA_SHADOW=1
MGOS_HAVE_PROVISION=1
MGOS_HAVE_RPC_AZURE=1
MGOS_HAVE_RPC_COMMON=1
MGOS_HAVE_RPC_GATTS=1
MGOS_HAVE_RPC_GCP=1
MGOS_HAVE_RPC_LOOPBACK=1
MGOS_HAVE_RPC_MQTT=1
MGOS_HAVE_RPC_SERVICE_ATCA=1
MGOS_HAVE_RPC_SERVICE_CONFIG=1
MGOS_HAVE_RPC_SERVICE_FS=1
MGOS_HAVE_RPC_SERVICE_GPIO=1
MGOS_HAVE_RPC_SERVICE_OTA=1
MGOS_HAVE_RPC_SERVICE_WIFI=1
MGOS_HAVE_RPC_UART=1
MGOS_HAVE_RPC_WS=1
MGOS_HAVE_SHADOW=1
MGOS_HAVE_SNTP=1
MGOS_HAVE_SPI=1
MGOS_HAVE_VFS_COMMON=1
MGOS_HAVE_VFS_DEV_SPI_FLASH=1
MGOS_HAVE_VFS_FS_LFS=1
MGOS_HAVE_VFS_FS_SPIFFS=1
MGOS_HAVE_WATSON=1
MGOS_HAVE_WIFI=1
MGOS_HAVE_ZZ_BOARDS=1
MGOS_MG_NET_IF=MG_NET_IF_LWIP_LOW_LEVEL
MGOS_PATH=/mongoose-os
MGOS_WIFI_ENABLE_AP_STA=0
PLATFORM=esp32