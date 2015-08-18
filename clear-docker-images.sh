#!/bin/bash

# Author Steven "AlphaNerd80" Mustafa
# Description:
# This utility script will completely kill all docker containers and 
# docker images on the system - basically returning it to a clean slate
#


# delete all docker containers
docker rm $(docker ps -a -q)

# delete all the docker images
docker rmi $(docker images -q)
