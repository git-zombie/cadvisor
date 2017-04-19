#!/bin/sh
sudo docker create \
  --name=cadvisor \
  -e PGID=1000 -e PUID=1000  \
  -e TZ=America/New_York \
  -p 8282:8080 \
  --volume=/:/rootfs:ro                         \
  --volume=/var/run:/var/run:rw                 \
  --volume=/sys:/sys:ro                         \
  --volume=/var/lib/docker/:/var/lib/docker:ro  \
  --network=usenet \
  --restart=always \
  google/cadvisor:latest
