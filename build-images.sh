#!/usr/bin/env bash

docker build --file 7.3/Dockerfile -t cimg/php:7.3.32  -t cimg/php:7.3 .
docker build --file 7.3/node/Dockerfile -t cimg/php:7.3.32-node  -t cimg/php:7.3-node .
docker build --file 7.3/browsers/Dockerfile -t cimg/php:7.3.32-browsers  -t cimg/php:7.3-browsers .
docker build --file 7.4/Dockerfile -t cimg/php:7.4.25  -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.25-node  -t cimg/php:7.4-node .
docker build --file 7.4/browsers/Dockerfile -t cimg/php:7.4.25-browsers  -t cimg/php:7.4-browsers .
docker build --file 8.0/Dockerfile -t cimg/php:8.0.12  -t cimg/php:8.0 .
docker build --file 8.0/node/Dockerfile -t cimg/php:8.0.12-node  -t cimg/php:8.0-node .
docker build --file 8.0/browsers/Dockerfile -t cimg/php:8.0.12-browsers  -t cimg/php:8.0-browsers .
