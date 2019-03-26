#!/bin/sh
< /etc/nginx/conf.d/default.tpl envsubst '$LISTEN_ADDR $LISTEN_PORT $SERVER_NAME' > /etc/nginx/conf.d/default.conf

exec /usr/sbin/nginx -g "daemon off;"
