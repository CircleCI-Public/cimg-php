#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 7.4/Dockerfile -t cimg/php:7.4.33 -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.33-node -t cimg/php:7.4-node .
docker build --file 7.4/browsers/Dockerfile -t cimg/php:7.4.33-browsers -t cimg/php:7.4-browsers .
docker build --file 8.0/Dockerfile -t cimg/php:8.0.25 -t cimg/php:8.0 .
docker build --file 8.0/node/Dockerfile -t cimg/php:8.0.25-node -t cimg/php:8.0-node .
docker build --file 8.0/browsers/Dockerfile -t cimg/php:8.0.25-browsers -t cimg/php:8.0-browsers .
