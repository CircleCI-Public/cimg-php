#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 8.0/Dockerfile -t cimg/php:8.0.22 -t cimg/php:8.0 .
docker build --file 8.0/node/Dockerfile -t cimg/php:8.0.22-node -t cimg/php:8.0-node .
docker build --file 8.0/browsers/Dockerfile -t cimg/php:8.0.22-browsers -t cimg/php:8.0-browsers .
docker build --file 8.1/Dockerfile -t cimg/php:8.1.9 -t cimg/php:8.1 .
docker build --file 8.1/node/Dockerfile -t cimg/php:8.1.9-node -t cimg/php:8.1-node .
docker build --file 8.1/browsers/Dockerfile -t cimg/php:8.1.9-browsers -t cimg/php:8.1-browsers .
