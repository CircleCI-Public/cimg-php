#!/usr/bin/env bash

docker build --file 7.3/Dockerfile -t cimg/php:7.3.16  -t cimg/php:7.3 .
docker build --file 7.3/node/Dockerfile -t cimg/php:7.3.16-node  -t cimg/php:7.3-node .
