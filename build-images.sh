#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 8.0/Dockerfile -t cimg/php:8.0.28 -t cimg/php:8.0 --platform linux/amd64 .
docker build --file 8.0/node/Dockerfile -t cimg/php:8.0.28-node -t cimg/php:8.0-node --platform linux/amd64 .
docker build --file 8.0/browsers/Dockerfile -t cimg/php:8.0.28-browsers -t cimg/php:8.0-browsers --platform linux/amd64 .
