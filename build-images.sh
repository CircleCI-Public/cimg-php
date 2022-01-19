#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 8.1/Dockerfile -t cimg/php:8.1.2  -t cimg/php:8.1 .
docker build --file 8.1/node/Dockerfile -t cimg/php:8.1.2-node  -t cimg/php:8.1-node .
docker build --file 8.1/browsers/Dockerfile -t cimg/php:8.1.2-browsers  -t cimg/php:8.1-browsers .
