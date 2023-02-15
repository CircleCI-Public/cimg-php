#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 8.1/Dockerfile -t cimg/php:8.1.14 -t cimg/php:8.1 --platform linux/amd64 .
docker build --file 8.1/node/Dockerfile -t cimg/php:8.1.14-node -t cimg/php:8.1-node --platform linux/amd64 .
docker build --file 8.1/browsers/Dockerfile -t cimg/php:8.1.14-browsers -t cimg/php:8.1-browsers --platform linux/amd64 .
docker build --file 8.2/Dockerfile -t cimg/php:8.2.1 -t cimg/php:8.2 --platform linux/amd64 .
docker build --file 8.2/node/Dockerfile -t cimg/php:8.2.1-node -t cimg/php:8.2-node --platform linux/amd64 .
docker build --file 8.2/browsers/Dockerfile -t cimg/php:8.2.1-browsers -t cimg/php:8.2-browsers --platform linux/amd64 .
