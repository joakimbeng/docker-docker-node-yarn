FROM docker:18.09.6 as docker
FROM mhart/alpine-node:10.15.3

COPY --from=docker /usr/local/bin/docker /usr/local/bin/docker

RUN apk add --no-cache \
  bash \
  curl \
  python \
  py-pip \
  make \
  gcc \
  libc6-compat \
  g++ \
  git \
  openssh \
  && pip install docker-compose

CMD ["node"]

