#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 8.2/Dockerfile -t cimg/php:8.2.0 -t cimg/php:8.2 .
docker build --file 8.2/node/Dockerfile -t cimg/php:8.2.0-node -t cimg/php:8.2-node .
docker build --file 8.2/browsers/Dockerfile -t cimg/php:8.2.0-browsers -t cimg/php:8.2-browsers .
