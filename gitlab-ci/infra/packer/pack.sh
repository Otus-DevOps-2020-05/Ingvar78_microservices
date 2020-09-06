#!/usr/bin/bash

packer build -var-file=variables.json gitlab-ci-vm.json
