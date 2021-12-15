#!/usr/bin/env bash

docker build --file 8.1/Dockerfile -t cimg/php:8.1.1  -t cimg/php:8.1 .
docker build --file 8.1/node/Dockerfile -t cimg/php:8.1.1-node  -t cimg/php:8.1-node .
docker build --file 8.1/browsers/Dockerfile -t cimg/php:8.1.1-browsers  -t cimg/php:8.1-browsers .
