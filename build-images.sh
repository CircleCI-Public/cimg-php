#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.1/Dockerfile -t cimg/php:8.1.24 -t cimg/php:8.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.1/node/Dockerfile -t cimg/php:8.1.24-node -t cimg/php:8.1-node --push .
docker buildx build --platform=linux/amd64 --file 8.1/browsers/Dockerfile -t cimg/php:8.1.24-browsers -t cimg/php:8.1-browsers --push .
