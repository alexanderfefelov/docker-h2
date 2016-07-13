#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "You must specify path for H2 base directory"
    exit
fi

H2_BASE_DIR=`readlink -e $1`

if [ ${#H2_BASE_DIR} -eq 0 ]; then
    echo "You must specify valid path for H2 base directory"
    exit
fi

echo H2 base directory: $H2_BASE_DIR

docker run --name h2-data --volume $H2_BASE_DIR:/h2 alexanderfefelov/docker-h2-data
docker run --name h2-server --detach --publish 9092:9092 --volume /etc/localtime:/etc/localtime:ro --volume /etc/timezone:/etc/timezone:ro --volumes-from h2-data alexanderfefelov/docker-h2-server
