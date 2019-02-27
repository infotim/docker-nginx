#!/bin/sh
< /etc/nginx/conf.d/default.tpl envsubst > /etc/nginx/conf.d/default.conf

exec /usr/sbin/nginx -g "daemon off;"
