#!/bin/sh

docker-compose down --rmi all -v
docker rm -f $(docker ps -qa)
docker volume rm $(docker volume ls -q --filter dangling=true)
docker rmi -f $(docker images -aq)