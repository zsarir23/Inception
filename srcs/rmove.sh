#!/bin/sh

docker rm -f $(docker ps -qa)

docker rmi -f $(docker images -aq)