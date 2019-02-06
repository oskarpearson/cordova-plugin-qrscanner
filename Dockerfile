FROM node:8.14.0-alpine

RUN apk add --update git

#RUN cd /tmp && \
#    git clone https://github.com/monya-wallet/cordova-plugin-qrscanner.git && \
#    cd cordova-plugin-qrscanner && \
#    git checkout safari-fix && \
#    npm install && \
#    npm run build && \
#    ls -al dist/

ADD package.json /tmp/cordova-plugin-qrscanner/

RUN ls -laR /tmp && \
    cd /tmp/cordova-plugin-qrscanner && \
    npm install --global
    
ADD . /tmp/cordova-plugin-qrscanner/

RUN cd /tmp/cordova-plugin-qrscanner/ && \
    npm install && \
    npm run build && \
    ls -al dist/
