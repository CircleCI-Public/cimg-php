#!/usr/bin/env bash

docker build --file 3.8/Dockerfile -t cimg/php:3.8.10  -t cimg/php:3.8 .
docker build --file 3.8/node/Dockerfile -t cimg/php:3.8.10-node  -t cimg/php:3.8-node .
docker build --file 3.8/browsers/Dockerfile -t cimg/php:3.8.10-browsers  -t cimg/php:3.8-browsers .
