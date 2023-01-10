FROM node:19-alpine

RUN set -x && \
    npm install -g textlint@12.5.1 \
    textlint-rule-preset-ja-technical-writing@7.0.0 \
    textlint-filter-rule-comments@1.2.2 \
    textlint-plugin-markdown \
    npm cache clean --force

WORKDIR /work
ENTRYPOINT ["/bin/bash", "-c"]
