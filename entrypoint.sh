#!/bin/bash
set -x

if [ "x$CONFPATH" == "x" ]; then
	CONFPATH="/etc/hive-site.xml"
fi

while true; do
	echo `date` "$CONFPATH: "
	cat $CONFPATH
	curl -d "@$CONFPATH" "http://$DVOROSHOST:4434/data"
	sleep 15
done
