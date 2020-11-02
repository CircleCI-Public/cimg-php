#!/usr/bin/env bash

docker build --file 5.6/browsers/Dockerfile -t cimg/php:5.6.40-browsers  -t cimg/php:5.6-browsers .
docker build --file 7.2/browsers/Dockerfile -t cimg/php:7.2.34-browsers  -t cimg/php:7.2-browsers .
docker build --file 7.3/browsers/Dockerfile -t cimg/php:7.3.23-browsers  -t cimg/php:7.3-browsers .
docker build --file 7.4/browsers/Dockerfile -t cimg/php:7.4.11-browsers  -t cimg/php:7.4-browsers .
