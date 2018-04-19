#!/bin/bash -e

touch passwd

docker build -t private/squid .

docker rm -f squid || true

docker run -dti \
    --name=squid \
    --log-driver=none \
    --restart=unless-stopped \
    -p 3128:3128 \
    -v $PWD/passwd:/etc/squid/passwd \
    private/squid
