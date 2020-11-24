#!/usr/bin/env bash

docker build --file 7.3/Dockerfile -t cimg/php:7.3.25  -t cimg/php:7.3 .
docker build --file 7.3/node/Dockerfile -t cimg/php:7.3.25-node  -t cimg/php:7.3-node .
docker build --file 7.3/browsers/Dockerfile -t cimg/php:7.3.25-browsers  -t cimg/php:7.3-browsers .
docker build --file 7.4/Dockerfile -t cimg/php:7.4.13  -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.13-node  -t cimg/php:7.4-node .
docker build --file 7.4/browsers/Dockerfile -t cimg/php:7.4.13-browsers  -t cimg/php:7.4-browsers .
