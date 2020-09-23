#!/bin/bash

yc compute instance create \
--name logging \
--zone ru-central1-a \
--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
--create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1804-lts,size=15 \
--memory 4 \
--ssh-key ~/.ssh/ubuntu.pub
