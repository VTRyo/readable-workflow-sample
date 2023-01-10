#!/bin/sh
textlint --format checkstyle --config ../../../textlint/.textlintrc article-sample/*/*.md > \
textlint.log || EXIT_CODE=$?

cat textlint.log | bin/reviewdog -reporter=github-pr-review \
  -diff='git --no-pager diff origin/main' \
  -f=checkstyle \
  -name=textlint

exit ${EXIT_CODE}
