#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 8.0/Dockerfile -t cimg/php:8.0.24 -t cimg/php:8.0 .
docker build --file 8.0/node/Dockerfile -t cimg/php:8.0.24-node -t cimg/php:8.0-node .
docker build --file 8.0/browsers/Dockerfile -t cimg/php:8.0.24-browsers -t cimg/php:8.0-browsers .
