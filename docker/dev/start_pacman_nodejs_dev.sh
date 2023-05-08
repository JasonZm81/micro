#!/usr/bin/env bash

# NodeJS
docker run -v /Users/wicky/Desktop/CodingWorkspaces/vs-demo/pacman:/usr/src/app --name pacman-nodejs-0 --network my-net -e "MONGO_SERVICE_HOST=pacman-mongo-0" -p 8080:8080 -d font/pacman-nodejs-app:nodejs_dev
docker run -v /Users/wicky/Desktop/CodingWorkspaces/vs-demo/pacman:/usr/src/app --name pacman-nodejs-1 --network my-net -e "MONGO_SERVICE_HOST=pacman-mongo-0" -p 8081:8080 -d font/pacman-nodejs-app:nodejs_dev
docker run -v /Users/wicky/Desktop/CodingWorkspaces/vs-demo/pacman:/usr/src/app --name pacman-nodejs-2 --network my-net -e "MONGO_SERVICE_HOST=pacman-mongo-0" -p 8082:8080 -d font/pacman-nodejs-app:nodejs_dev
