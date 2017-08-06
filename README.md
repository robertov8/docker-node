# docker-node
Docker with node, npm, gulp, grunt, bower and create-react-native-app

* node:alpine
* node:8-alpine
* node:7-alpine
* node:6-alpine
* node:5-alpine
* node:4-alpine

https://hub.docker.com/_/node/


### Docker Run

If you run the node image using `docker run` you can use the `-e` flag to
override `NPM_CONFIG_LOGLEVEL`.

```
$ docker run --rm -e NPM_CONFIG_LOGLEVEL=warn --name node-8alpine node:8-alpine node ...
```

### NPM run

If you are running npm commands you can use `--loglevel` to control the
verbosity of the output.

```
$ docker run --rm --name node-8alpine node:8-alpine npm --loglevel=warn ...
```

### Run a single Node.js script

For many simple, single file projects, you may find it inconvenient to write a
complete `Dockerfile`. In such cases, you can run a Node.js script by using the
Node.js Docker image directly:

```console
$ docker build -t robertov82008/node-8alpine .
$ docker run -it --rm --name node-8alpine robertov82008/node-8alpine -v "$PWD":/usr/src/app -w
/usr/src/app node:4 node your-daemon-or-script.js
```

### Composer 

```
# docker-compose up serve
```


### Run Commands 

```
docker-compose up --build
docker-compose run local packages ... 
```


