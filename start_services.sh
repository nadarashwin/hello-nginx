#!/bin/bash

#/etc/init.d/nginx start &
#/usr/sbin/nginx -g "daemon off;"
#export TASK_HOST=${TASK_HOST:-localhost}
#export PORT0=${PORT0:-8000}
./discovery-wrapper -t test_ashwin_nginx -s http /usr/sbin/nginx -g "daemon off;"
