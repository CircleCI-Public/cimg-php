#!/usr/bin/env bash

docker build --file 7.3/Dockerfile -t cimg/php:7.3.31  -t cimg/php:7.3 .
docker build --file 7.3/node/Dockerfile -t cimg/php:7.3.31-node  -t cimg/php:7.3-node .
docker build --file 7.3/browsers/Dockerfile -t cimg/php:7.3.31-browsers  -t cimg/php:7.3-browsers .
docker build --file 7.4/Dockerfile -t cimg/php:7.4.24  -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.24-node  -t cimg/php:7.4-node .
docker build --file 7.4/browsers/Dockerfile -t cimg/php:7.4.24-browsers  -t cimg/php:7.4-browsers .
docker build --file 8.0/Dockerfile -t cimg/php:8.0.11  -t cimg/php:8.0 .
docker build --file 8.0/node/Dockerfile -t cimg/php:8.0.11-node  -t cimg/php:8.0-node .
docker build --file 8.0/browsers/Dockerfile -t cimg/php:8.0.11-browsers  -t cimg/php:8.0-browsers .
