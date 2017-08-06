FROM node:alpine

# install system packages
RUN apk add --no-cache \
    bash

# install npm packages
RUN set -x \
    && npm install --silent -g \
        create-react-native-app \
        gulp-cli \
        grunt-cli \
        bower

WORKDIR /usr/src/app

EXPOSE 8080

CMD ["node"]
