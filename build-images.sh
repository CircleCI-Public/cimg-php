#!/usr/bin/env bash

docker build --file 7.3/Dockerfile -t cimg/php:7.3.19  -t cimg/php:7.3 .
docker build --file 7.3/node/Dockerfile -t cimg/php:7.3.19-node  -t cimg/php:7.3-node .
docker build --file 7.4/Dockerfile -t cimg/php:7.4.7  -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.7-node  -t cimg/php:7.4-node .
