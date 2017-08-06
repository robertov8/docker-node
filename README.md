# docker-node
Docker with node, npm, gulp, grunt, bower and create-react-native-app

* node:alpine
* node:8-alpine
* node:7-alpine
* node:6-alpine
* node:5-alpine
* node:4-alpine

https://hub.docker.com/_/node/


## Working with the container

### Docker Run

If you run the node image using `docker run` you can use the `-e` flag to
override `NPM_CONFIG_LOGLEVEL`.

```console
# Create container
$ docker build -t rrrj/node-8alpine github.com/robertov82008/docker-node.git

# Run commands
$ docker run \
    --rm \
    -e NPM_CONFIG_LOGLEVEL=warn \
    -e NODE_ENV=production \
    -v $PWD:/usr/src/app \
    --name node-8alpine \
    -w /usr/src/app \
    rrrj/node-8alpine \
    commands ...

# Open terminal
$ docker run -it rrrj/node-8alpine bash
```

### NPM run

If you are running npm commands you can use `--loglevel` to control the
verbosity of the output.

```console
$ docker run --rm --name node-8alpine node:8-alpine npm --loglevel=warn ...
```

### Run a single Node.js script

For many simple, single file projects, you may find it inconvenient to write a
complete `Dockerfile`. In such cases, you can run a Node.js script by using the
Node.js Docker image directly:

```console
$ docker run \
    --rm \
    -e NPM_CONFIG_LOGLEVEL=warn \
    -e NODE_ENV=production \
    -v $PWD:/usr/src/app \
    --name node-8alpine \
    -w /usr/src/app \
    rrrj/node-8alpine \
    node your-daemon-or-script.js
```

## Working with the Compose

### Run Commands

```console
$ docker-compose up
$ docker-compose run docker-node ...
```
