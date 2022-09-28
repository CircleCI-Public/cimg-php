#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 7.4/Dockerfile -t cimg/php:7.4.32 -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.32-node -t cimg/php:7.4-node .
docker build --file 7.4/browsers/Dockerfile -t cimg/php:7.4.32-browsers -t cimg/php:7.4-browsers .
docker build --file 8.1/Dockerfile -t cimg/php:8.1.11 -t cimg/php:8.1 .
docker build --file 8.1/node/Dockerfile -t cimg/php:8.1.11-node -t cimg/php:8.1-node .
docker build --file 8.1/browsers/Dockerfile -t cimg/php:8.1.11-browsers -t cimg/php:8.1-browsers .
