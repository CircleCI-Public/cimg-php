#!/usr/bin/env bash

docker build --file 7.3/Dockerfile -t cimg/php:7.3.32  -t cimg/php:7.3 .
docker build --file 7.3/node/Dockerfile -t cimg/php:7.3.32-node  -t cimg/php:7.3-node .
docker build --file 7.3/browsers/Dockerfile -t cimg/php:7.3.32-browsers  -t cimg/php:7.3-browsers .
