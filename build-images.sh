#!/usr/bin/env bash

docker build --file 7.3/Dockerfile -t cimg/php:7.3.27  -t cimg/php:7.3 .
docker build --file 7.3/node/Dockerfile -t cimg/php:7.3.27-node  -t cimg/php:7.3-node .
docker build --file 7.3/browsers/Dockerfile -t cimg/php:7.3.27-browsers  -t cimg/php:7.3-browsers .
docker build --file 7.4/Dockerfile -t cimg/php:7.4.15  -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.15-node  -t cimg/php:7.4-node .
docker build --file 7.4/browsers/Dockerfile -t cimg/php:7.4.15-browsers  -t cimg/php:7.4-browsers .
docker build --file 8.0/Dockerfile -t cimg/php:8.0.2  -t cimg/php:8.0 .
docker build --file 8.0/node/Dockerfile -t cimg/php:8.0.2-node  -t cimg/php:8.0-node .
docker build --file 8.0/browsers/Dockerfile -t cimg/php:8.0.2-browsers  -t cimg/php:8.0-browsers .
