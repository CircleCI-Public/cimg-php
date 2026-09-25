#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.5/Dockerfile -t cimg/php:8.5.11 -t cimg/php:8.5 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.5/node/Dockerfile -t cimg/php:8.5.11-node -t cimg/php:8.5-node --push .
docker buildx build --platform=linux/amd64 --file 8.5/browsers/Dockerfile -t cimg/php:8.5.11-browsers -t cimg/php:8.5-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.4/Dockerfile -t cimg/php:8.4.26 -t cimg/php:8.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.4/node/Dockerfile -t cimg/php:8.4.26-node -t cimg/php:8.4-node --push .
docker buildx build --platform=linux/amd64 --file 8.4/browsers/Dockerfile -t cimg/php:8.4.26-browsers -t cimg/php:8.4-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.3/Dockerfile -t cimg/php:8.3.35 -t cimg/php:8.3 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.3/node/Dockerfile -t cimg/php:8.3.35-node -t cimg/php:8.3-node --push .
docker buildx build --platform=linux/amd64 --file 8.3/browsers/Dockerfile -t cimg/php:8.3.35-browsers -t cimg/php:8.3-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.2/Dockerfile -t cimg/php:8.2.34 -t cimg/php:8.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.2/node/Dockerfile -t cimg/php:8.2.34-node -t cimg/php:8.2-node --push .
docker buildx build --platform=linux/amd64 --file 8.2/browsers/Dockerfile -t cimg/php:8.2.34-browsers -t cimg/php:8.2-browsers --push .
