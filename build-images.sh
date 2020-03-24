#!/usr/bin/env bash

docker build --file 7.2/Dockerfile -t cimg/php:7.2.29  -t cimg/php:7.2 .
docker build --file 7.2/node/Dockerfile -t cimg/php:7.2.29-node  -t cimg/php:7.2-node .
