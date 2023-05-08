#!/usr/bin/env bash

# Mongo
./kill_pacman_mongo_dev.sh

# NodeJS
./kill_pacman_nodejs_dev.sh

docker network rm my-net 
docker volume prune -f