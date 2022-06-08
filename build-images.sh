#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 7.4/Dockerfile -t cimg/php:7.4.29-ext-test .
docker build --file 8.0/Dockerfile -t cimg/php:8.0.19-ext-test .
docker build --file 8.1/Dockerfile -t cimg/php:8.1.5-ext-test .
