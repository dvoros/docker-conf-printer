#!/bin/bash
set -x

if [ "x$CONFPATH" == "x" ]; then
	CONFPATH="/etc/hive-site.xml"
fi

DATA=""

while true; do
	if [ "x$DATA" == "x" ]; then
		DATA=`cat $CONFPATH`
		echo `date` "$CONFPATH: "
		cat $CONFPATH
	fi
	curl -d "$DATA" "http://$DVOROSHOST:4434/data"
	sleep 15
done
