server {
    listen ${LISTEN_ADDR}:${LISTEN_PORT};
    server_name ${SERVER_NAME};

    location / {
        root /usr/share/nginx/html;
        try_files $uri $uri/ index.html;
    }

    error_page 500 502 503 504 /50x.html;
    location = /50x.html {
        root /usr/share/nginx/html;
    }
}
