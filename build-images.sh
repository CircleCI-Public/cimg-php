#!/usr/bin/env bash

docker build --file 7.3/Dockerfile -t cimg/php:7.3.28  -t cimg/php:7.3 .
docker build --file 7.3/node/Dockerfile -t cimg/php:7.3.28-node  -t cimg/php:7.3-node .
docker build --file 7.3/browsers/Dockerfile -t cimg/php:7.3.28-browsers  -t cimg/php:7.3-browsers .
docker build --file 8.0/Dockerfile -t cimg/php:8.0.5  -t cimg/php:8.0 .
docker build --file 8.0/node/Dockerfile -t cimg/php:8.0.5-node  -t cimg/php:8.0-node .
docker build --file 8.0/browsers/Dockerfile -t cimg/php:8.0.5-browsers  -t cimg/php:8.0-browsers .
