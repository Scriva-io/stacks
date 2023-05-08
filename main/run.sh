#!/bin/bash

if [ ! "$(docker network ls -q -f name=traefik-public)" ]; then
    docker network create traefik-public
fi

docker compose --env-file .env up -d