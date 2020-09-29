#!/bin/bash

for i in 0 1 2; do
  yc compute instance create \
    --name worker-${i} \
    --hostname worker-${i} \
    --async \
    --memory=4 \
    --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1804,size=20GB \
    --network-interface subnet-name=kubernetes,nat-ip-version=ipv4,address=10.240.0.2${i} \
    --metadata serial-port-enable=1,pod-cidr=10.200.${i}.0/24 \
    --ssh-key ~/.ssh/ubuntu.pub
done
