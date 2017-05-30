FROM docker:17

ENV PATH node_modules/.bin:$PATH

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh nodejs && \
    npm install -g yarn
