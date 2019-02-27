FROM nginx:1.15.8-alpine

ENV \
    LISTEN_ADDR=0.0.0.0 \
    LISTEN_PORT=8080 \
    SERVER_NAME=localhost

COPY . .

ENTRYPOINT ["/docker-entrypoint.sh"]
