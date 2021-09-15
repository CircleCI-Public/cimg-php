#!/usr/bin/env bash

docker build --file 7.0/Dockerfile -t cimg/php:7.0.33  -t cimg/php:7.0 .
docker build --file 7.0/node/Dockerfile -t cimg/php:7.0.33-node  -t cimg/php:7.0-node .
docker build --file 7.0/browsers/Dockerfile -t cimg/php:7.0.33-browsers  -t cimg/php:7.0-browsers .
docker build --file 7.1/Dockerfile -t cimg/php:7.1.33  -t cimg/php:7.1 .
docker build --file 7.1/node/Dockerfile -t cimg/php:7.1.33-node  -t cimg/php:7.1-node .
docker build --file 7.1/browsers/Dockerfile -t cimg/php:7.1.33-browsers  -t cimg/php:7.1-browsers .
