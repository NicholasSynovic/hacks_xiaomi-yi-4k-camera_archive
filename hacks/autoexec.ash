echo 'Startup ...' > c:\autoexec.log

# Force stop wifi
echo 'Stopping Wifi ...' > c:\autoexec.log
t app key stop_wifi

# Enable USB console
t ipc rpc clnt exec2 '/tmp/fuse_d/scripts/usbConsole.sh &'

# Enable Wifi client
t ipc rpc clnt exec2 '/tmp/fuse_d/scripts/wifiClient.sh &'
