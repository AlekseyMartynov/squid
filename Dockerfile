FROM alpine:3.7

RUN apk add --no-cache squid apache2-utils

ADD squid.conf /etc/squid/
CMD [ "squid", "-N" ]
