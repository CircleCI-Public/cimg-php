#!/usr/bin/env bash

docker build --file 7.4/Dockerfile -t cimg/php:7.4.22  -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.22-node  -t cimg/php:7.4-node .
docker build --file 7.4/browsers/Dockerfile -t cimg/php:7.4.22-browsers  -t cimg/php:7.4-browsers .
