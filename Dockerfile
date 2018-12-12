FROM node:8.14.0-alpine

RUN apk add --update git

#RUN cd /tmp && \
#    git clone https://github.com/monya-wallet/cordova-plugin-qrscanner.git && \
#    cd cordova-plugin-qrscanner && \
#    git checkout safari-fix && \
#    npm install && \
#    npm run build && \
#    ls -al dist/

RUN cd /tmp && \
    git clone https://github.com/monya-wallet/cordova-plugin-qrscanner.git && \
    cd cordova-plugin-qrscanner && \
    git checkout safari-fix && \
    npm install && \
    npm run prep-release && \
    ls -al dist/
