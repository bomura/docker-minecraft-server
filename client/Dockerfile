FROM alpine
LABEL maintainer 'bomura'

WORKDIR /minecraft-client

RUN apk add curl

COPY entrypoint-minecraft-client.sh /entrypoint-minecraft-client.sh

ENTRYPOINT ["/entrypoint-minecraft-client.sh"]
CMD ["/sbin/init"]
