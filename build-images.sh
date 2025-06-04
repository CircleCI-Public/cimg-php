#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.4/Dockerfile -t cimg/php:8.4.8 -t cimg/php:8.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.4/node/Dockerfile -t cimg/php:8.4.8-node -t cimg/php:8.4-node --push .
docker buildx build --platform=linux/amd64 --file 8.4/browsers/Dockerfile -t cimg/php:8.4.8-browsers -t cimg/php:8.4-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.3/Dockerfile -t cimg/php:8.3.22 -t cimg/php:8.3 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.3/node/Dockerfile -t cimg/php:8.3.22-node -t cimg/php:8.3-node --push .
docker buildx build --platform=linux/amd64 --file 8.3/browsers/Dockerfile -t cimg/php:8.3.22-browsers -t cimg/php:8.3-browsers --push .
