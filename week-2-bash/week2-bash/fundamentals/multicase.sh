#!/bin/bash
case "$1" in
start|run|launch) echo " Starting Process ...";;
stop|end|terminate) echo " Stopping Process ...";;
*) echo " Unknown Command";;
esac
