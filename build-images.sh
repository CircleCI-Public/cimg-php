#!/usr/bin/env bash

docker build --file 7.3/browsers/Dockerfile -t cimg/php:7.3.24-browsers  -t cimg/php:7.3-browsers .
docker build --file 7.4/browsers/Dockerfile -t cimg/php:7.4.12-browsers  -t cimg/php:7.4-browsers .
