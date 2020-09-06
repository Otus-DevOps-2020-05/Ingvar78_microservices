#!/bin/bash

cd ./terraform > /dev/null
terraform destroy && terraform apply -auto-approve=false
cd - > /dev/null
