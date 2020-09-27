#!/bin/bash

for instance in 0 1 2; do
  export EXTERNAL_IP_MASTER_${instance}=$(yc compute instance get master-${instance} \
  | grep -A1 one_to_one_nat: \
  | grep -oE '\b[0-9]{1,3}(\.[0-9]{1,3}){3}\b' )
done
