FROM nginx:1.15.12-alpine

ADD nginx.conf /etc/nginx/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash

RUN set -x ; \
    addgroup -g 82 -S www-data ; \
    adduser -D -H -u 1000 -s /bin/bash www-data -G www-data

ARG PHP_UPSTREAM_CONTAINER=php-fpm
ARG PHP_UPSTREAM_PORT=9000

# Set upstream conf and remove the default conf
RUN echo "upstream php-upstream { server ${PHP_UPSTREAM_CONTAINER}:${PHP_UPSTREAM_PORT}; }" > /etc/nginx/conf.d/upstream.conf \
    && rm /etc/nginx/conf.d/default.conf

CMD ["nginx"]

EXPOSE 80 443
