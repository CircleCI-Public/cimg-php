#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 7.4/Dockerfile -t cimg/php:7.4.31 -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.31-node -t cimg/php:7.4-node .
docker build --file 7.4/browsers/Dockerfile -t cimg/php:7.4.31-browsers -t cimg/php:7.4-browsers .
