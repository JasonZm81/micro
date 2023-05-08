#!/usr/bin/env bash

docker network create my-net

# Mongo
./start_pacman_mongo_dev.sh

# NodeJS
./start_pacman_nodejs_dev.sh
