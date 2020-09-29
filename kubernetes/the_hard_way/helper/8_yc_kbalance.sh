#!/bin/bash

yc compute instance get master-0 \
  | grep subnet_id: \
  | sed 's/subnet_id: //'
