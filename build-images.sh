#!/usr/bin/env bash

docker build --file 7.4/Dockerfile -t cimg/php:7.4.5  -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.5-node  -t cimg/php:7.4-node .
