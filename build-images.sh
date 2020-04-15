#!/usr/bin/env bash

docker build --file 7.2/Dockerfile -t cimg/php:7.2.30  -t cimg/php:7.2 .
docker build --file 7.2/node/Dockerfile -t cimg/php:7.2.30-node  -t cimg/php:7.2-node .
