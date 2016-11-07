#!/bin/sh
set -e
PASS_DECODE=`echo $MOSQUITTO_PASSWORD | base64 --decode`
mosquitto_sub -h $MOSQUITTO_HOST -c -q $MOSQUITTO_QOS -i $MOSQUITTO_CLIENTID -p $MOSQUITTO_PORT -t $MOSQUITTO_TOPIC -u $MOSQUITTO_USER -P $PASS_DECODE -v -d >> /mnt/data/mosquitto.out