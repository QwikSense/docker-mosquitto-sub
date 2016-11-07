FROM alpine:latest
RUN apk -U upgrade && apk add --no-cache mosquitto-clients coreutils && rm -rf /tmp/src && rm -rf /var/cache/apk/*
ADD run_mosquitto_sub.sh /run.sh
RUN chmod u+x /run.sh
ENTRYPOINT ["/run.sh"]