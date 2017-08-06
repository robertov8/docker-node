FROM node:alpine

ENV NPM_CONFIG_LOGLEVEL warn

RUN set -x \
	# install npm packages
    && npm install --silent -g \
    	create-react-native-app \
        gulp-cli \
        grunt-cli \
        bower

EXPOSE 8080