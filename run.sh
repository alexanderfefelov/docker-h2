#!/bin/sh

docker run --name h2-data --volume /etc/localtime:/etc/localtime:ro alexanderfefelov/docker-h2-data
docker run --name h2-server --detach --publish 9092:9092 --volume /etc/localtime:/etc/localtime:ro --volumes-from h2-data alexanderfefelov/docker-h2-server
