#!/usr/bin/env bash

docker build --file 7.2/Dockerfile -t cimg/php:7.2.33  -t cimg/php:7.2 .
docker build --file 7.2/node/Dockerfile -t cimg/php:7.2.33-node  -t cimg/php:7.2-node .
docker build --file 7.3/Dockerfile -t cimg/php:7.3.21  -t cimg/php:7.3 .
docker build --file 7.3/node/Dockerfile -t cimg/php:7.3.21-node  -t cimg/php:7.3-node .
docker build --file 7.4/Dockerfile -t cimg/php:7.4.9  -t cimg/php:7.4 .
docker build --file 7.4/node/Dockerfile -t cimg/php:7.4.9-node  -t cimg/php:7.4-node .
