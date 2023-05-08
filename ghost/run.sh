#!/bin/bash

if [ ! "$(docker network ls -q -f name=mysql-net)" ]; then
    docker network create mysql-net
fi

docker compose --env-file .env up -d