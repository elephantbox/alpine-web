ARG ALPINE_BASEIMAGE=elephantbox/alpine-php-node:latest

FROM $ALPINE_BASEIMAGE

RUN apk add --update --no-cache \
  runit \
  nginx

COPY bin/ /usr/local/bin/
COPY etc/ /etc/

CMD ["runsvinit"]
