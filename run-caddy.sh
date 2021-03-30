#!/bin/bash

echo "Starting CaddyServer..."
sudo docker run -d --name groundhog \
    -p 443:443 \
    --link funny_jepsen:funny_jepsen \
    -v $(pwd)/Caddyfile:/etc/Caddyfile \
    abiosoft/caddy

