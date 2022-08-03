#!/bin/zsh

echo "Starting Background Geolocation Console ..."

docker run -d \
   --name geolocation \
   -v /etc/timezone:/etc/timezone:ro \
   -v /etc/localtime:/etc/localtime:ro \
   -p 9000:9000 \
   -e "SHARED_DASHBOARD=1" \
   -e "ADMIN_TOKEN=admin" \
   -e "PASSWORD=admin" \
   -h geolocation \
   --restart unless-stopped \
   cnconsult/geolocation-console:latest

echo "Done."
