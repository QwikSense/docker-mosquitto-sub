FROM alpine:latest
MAINTAINER 
RUN apk add --no-cache mosquitto-clients
ENTRYPOINT ["mosquitto_sub -h $MOSQUITTO_HOST -c -q $MOSQUITTO_QOS -i $MOSQUITTO_CLIENTID -p $MOSQUITTO_PORT -t $MOSQUITTO_TOPIC -u $MOSQUITTO_USER -P $MOSQUITTO_PASS -v -d >> /mnt/data/mosquitto.out"]