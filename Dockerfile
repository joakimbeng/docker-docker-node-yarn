FROM docker:17.07.0

ENV PATH node_modules/.bin:$PATH

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh nodejs && \
    npm install -g yarn && \
    npm version && \
    yarn --version

