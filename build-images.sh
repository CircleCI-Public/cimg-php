#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.4/Dockerfile -t cimg/php:8.4.20 -t cimg/php:8.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.4/node/Dockerfile -t cimg/php:8.4.20-node -t cimg/php:8.4-node --push .
docker buildx build --platform=linux/amd64 --file 8.4/browsers/Dockerfile -t cimg/php:8.4.20-browsers -t cimg/php:8.4-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.5/Dockerfile -t cimg/php:8.5.5 -t cimg/php:8.5 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.5/node/Dockerfile -t cimg/php:8.5.5-node -t cimg/php:8.5-node --push .
docker buildx build --platform=linux/amd64 --file 8.5/browsers/Dockerfile -t cimg/php:8.5.5-browsers -t cimg/php:8.5-browsers --push .
