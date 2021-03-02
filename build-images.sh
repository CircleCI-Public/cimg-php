#!/usr/bin/env bash

docker build --file 7.4/Dockerfile -t cimg/php:7.4.16  -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.16-node  -t cimg/php:7.4-node .
docker build --file 7.4/browsers/Dockerfile -t cimg/php:7.4.16-browsers  -t cimg/php:7.4-browsers .
docker build --file 8.0/Dockerfile -t cimg/php:8.0.3  -t cimg/php:8.0 .
docker build --file 8.0/node/Dockerfile -t cimg/php:8.0.3-node  -t cimg/php:8.0-node .
docker build --file 8.0/browsers/Dockerfile -t cimg/php:8.0.3-browsers  -t cimg/php:8.0-browsers .
