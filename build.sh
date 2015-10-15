#!/bin/sh

docker build --tag alexanderfefelov/docker-h2-data data
docker build --tag alexanderfefelov/docker-h2-server server
