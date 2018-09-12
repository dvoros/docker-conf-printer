#!/bin/sh

while true; do
	echo `date` "/etc/hive-site.xml: "
	cat /etc/hive-site.xml
	curl -d "@/etc/hive-site.xml" "http://$DVOROSHOST:4434/data"
	sleep 15
done
