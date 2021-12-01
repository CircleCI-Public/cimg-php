#!/usr/bin/env bash

docker build --file 7.3/Dockerfile -t cimg/php:7.3.33  -t cimg/php:7.3 .
docker build --file 7.3/node/Dockerfile -t cimg/php:7.3.33-node  -t cimg/php:7.3-node .
docker build --file 7.3/browsers/Dockerfile -t cimg/php:7.3.33-browsers  -t cimg/php:7.3-browsers .
docker build --file 7.4/Dockerfile -t cimg/php:7.4.26  -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.26-node  -t cimg/php:7.4-node .
docker build --file 7.4/browsers/Dockerfile -t cimg/php:7.4.26-browsers  -t cimg/php:7.4-browsers .
docker build --file 8.0/Dockerfile -t cimg/php:8.0.13  -t cimg/php:8.0 .
docker build --file 8.0/node/Dockerfile -t cimg/php:8.0.13-node  -t cimg/php:8.0-node .
docker build --file 8.0/browsers/Dockerfile -t cimg/php:8.0.13-browsers  -t cimg/php:8.0-browsers .
docker build --file 8.1/Dockerfile -t cimg/php:8.1.0  -t cimg/php:8.1 .
docker build --file 8.1/node/Dockerfile -t cimg/php:8.1.0-node  -t cimg/php:8.1-node .
docker build --file 8.1/browsers/Dockerfile -t cimg/php:8.1.0-browsers  -t cimg/php:8.1-browsers .
