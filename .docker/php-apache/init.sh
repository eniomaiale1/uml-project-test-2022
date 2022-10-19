#!/usr/bin/env bash
start_apache_server() {
  # start apache2
  echo "sleep for 3 seconds before starting apache2"
  sleep 3
  echo $(date "+%T") "Starting apache2"
  sed -i "s/{PORT}/80/g" /etc/apache2/apache2.conf
  /usr/sbin/apache2ctl -D FOREGROUND
}
start_apache_server