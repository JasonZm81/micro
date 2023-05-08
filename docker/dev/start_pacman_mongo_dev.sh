#!/usr/bin/env bash

# Mongo
docker run --name pacman-mongo-0 --network my-net -p 27017:27017 -d mongo:3.4 #--replSet rs0
# docker run --name pacman-mongo-1 --network my-net -p 27018:27017 -d mongo:3.4 --replSet rs0
# docker run --name pacman-mongo-2 --network my-net -p 27019:27017 -d mongo:3.4 --replSet rs0
