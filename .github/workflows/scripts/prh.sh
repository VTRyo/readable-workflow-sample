#!/bin/sh
prh --rules ../../../prh/prh.yml --verify article-sample/*/*.md > prh.log || \
EXIT_CODE=$?

cat prh.log | bin/reviewdog -reporter=github-pr-review \
  -diff='git --no-pager diff origin/main' \
  -efm='%f(%l,%c): %m' \
  -name=prh

exit ${EXIT_CODE}
