#!/bin/bash

yc vpc subnet create --name kubernetes \
  --description "My kubernetes subnet" \
  --folder-id b1gekrrielbmteicvonh \
  --network-id enpv0ng8bok1t0tcfrkf \
  --zone ru-central1-a \
  --range 10.240.0.0/24
