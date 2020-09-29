#!/usr/bin/env bash

docker build --file 7.3/Dockerfile -t cimg/php:7.3.23  -t cimg/php:7.3 .
docker build --file 7.3/node/Dockerfile -t cimg/php:7.3.23-node  -t cimg/php:7.3-node .
docker build --file 7.4/Dockerfile -t cimg/php:7.4.11  -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.11-node  -t cimg/php:7.4-node .
