#!/usr/bin/env bash

docker build --file 5.6/Dockerfile -t cimg/php:5.6.40  -t cimg/php:5.6 .
docker build --file 5.6/node/Dockerfile -t cimg/php:5.6.40-node  -t cimg/php:5.6-node .
