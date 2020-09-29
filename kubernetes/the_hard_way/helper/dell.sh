#!/bin/bash

for i in 0 1 2; do
  yc compute instance delete master-${i}
  yc compute instance delete worker-${i}
done

  yc vpc subnet update kubernetes --disassociate-route-table
  yc vpc route-table delete kubernetes-route
  yc load-balancer network-load-balancer delete kubernetes-load-balancer
  yc load-balancer target-group delete kubernetes-target-pool
  yc vpc subnet delete kubernetes
  yc vpc network delete kubernetes-the-hard-way
