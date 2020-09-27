#!/bin/bash

yc vpc network create --name kubernetes-the-hard-way \
  --description "Network for Kubernetes cluster" \
  --folder-id b1gekrrielbmteicvonh
