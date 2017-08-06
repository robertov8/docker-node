FROM node:alpine

RUN set -x \
	# install npm packages
    && npm install --silent -g \
    	create-react-native-app \
        gulp-cli \
        grunt-cli \
        bower