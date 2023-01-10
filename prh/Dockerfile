FROM node:19-alpine

RUN set -x && \
  npm install -g prh@5.4.4 && \
  npm cache clean --force

WORKDIR /work
ENTRYPOINT ["/bin/bash", "-c"]
