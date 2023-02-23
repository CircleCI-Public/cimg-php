#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 8.1/Dockerfile -t cimg/php:8.1.16 -t cimg/php:8.1 --platform linux/amd64 .
docker build --file 8.1/node/Dockerfile -t cimg/php:8.1.16-node -t cimg/php:8.1-node --platform linux/amd64 .
docker build --file 8.1/browsers/Dockerfile -t cimg/php:8.1.16-browsers -t cimg/php:8.1-browsers --platform linux/amd64 .
docker build --file 8.2/Dockerfile -t cimg/php:8.2.3 -t cimg/php:8.2 --platform linux/amd64 .
docker build --file 8.2/node/Dockerfile -t cimg/php:8.2.3-node -t cimg/php:8.2-node --platform linux/amd64 .
docker build --file 8.2/browsers/Dockerfile -t cimg/php:8.2.3-browsers -t cimg/php:8.2-browsers --platform linux/amd64 .
