FROM docker:19.03.2 as docker
FROM mhart/alpine-node:10.16.3

COPY --from=docker /usr/local/bin/docker /usr/local/bin/docker

RUN apk add --no-cache \
  bash \
  curl \
  python \
  python-dev \
  py-pip \
  make \
  gcc \
  libc6-compat \
  libffi-dev \
  g++ \
  git \
  openssh \
  openssl-dev \
  && pip install docker-compose

CMD ["node"]

