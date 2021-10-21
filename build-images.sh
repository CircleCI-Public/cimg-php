#!/usr/bin/env bash

docker build --file 7.2/Dockerfile -t cimg/php:7.2.23  -t cimg/php:7.2 .
docker build --file 7.2/node/Dockerfile -t cimg/php:7.2.23-node  -t cimg/php:7.2-node .
docker build --file 7.2/browsers/Dockerfile -t cimg/php:7.2.23-browsers  -t cimg/php:7.2-browsers .
