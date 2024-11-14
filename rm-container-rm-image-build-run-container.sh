#!/bin/bash

name="cursoms-eureka"
network="cursoms-network"

docker stop "${name}" ;\
docker rm -f "${name}" ;\
docker image rm -f "${name}" ;\
docker build --tag "${name}" . ;\
docker run --name "${name}" -p 8761:8761 --network "${network}" "${name}"
