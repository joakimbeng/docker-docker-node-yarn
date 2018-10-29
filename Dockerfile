FROM docker:18.06.1 as docker
FROM mhart/alpine-node:10.12.0

COPY --from=docker /usr/local/bin/docker /usr/local/bin/docker

RUN apk add --no-cache \
  bash \
  curl \
  python \
  py-pip \
  make \
  git \
  openssh \
  && pip install docker-compose

CMD ["node"]

