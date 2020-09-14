#!/bin/bash

docker-machine create \
--driver generic \
--generic-ip-address=130.193.38.227 \
--generic-ssh-user yc-user \
--generic-ssh-key ~/.ssh/ubuntu \
docker-host
