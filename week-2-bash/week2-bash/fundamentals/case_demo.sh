#!/bin/bash
action=$1
case "$action" in
start)
echo "Service starting..." 
;;
stop)
echo "Service stopping..."
;;
status)
echo "Service is running fine."
;;
*)
echo "Usage: $0{start|stop|status}"
exit 1
;;
esac
