# pacman---
Pac-Man2

## Applications Architecture Components
1. WebApp: NodeJS (boron)
2. Database: MongoDB (3.4)

## MongoDB setup
1. Install locally, reference [MongoDB's documentation](https://www.mongodb.com/docs/manual/administration/install-community/)
2. Install using docker (Install Docker on Ubuntu: https://docs.docker.com/engine/install/ubuntu/)
```
docker network create my-net
docker run --name pacman-mongo-0 --network my-net -p 27017:27017 -d mongo:3.4
```

## NodeJS WebApp setup
### Install dependencies

```
npm install
```

### Getting started

```
npm run start
```

### Development

```
npm run dev
```

### Configurations (WebApp's environment variables)
1. MongoDB's hostname: MONGO_SERVICE_HOST
2. MongoDB's port: MY_MONGO_PORT
3. Other configurations, reference [config.js in this repo](lib/config.js)


## Create Application Container Image

*This section is for reference only, familiarity with Docker is required

### Docker Container Image

The [Dockerfile](docker/Dockerfile) performs the following steps:

1. It is based on Node.js LTS Version 6 (Boron).
1. It then clones the Pac-Man game into the configured application directory.
1. Exposes port 8080 for the web server.
1. Starts the Node.js application using `npm start`.

To build the image run:

```
cd docker
docker build -t <registry>/<user>/pacman-nodejs-app .
```

You can test the image by running:

```
docker run -p 8000:8080 <registry>/<user>/pacman-nodejs-app
```

And going to `http://localhost:8000/` to see if you get the Pac-Man game.

Once you're satisfied you can push the image to the container registry.

```
docker push <registry>/<user>/pacman-nodejs-app
```

### Building using an s2i image

```
s2i build . centos/nodejs-6-centos7 pacman
```
