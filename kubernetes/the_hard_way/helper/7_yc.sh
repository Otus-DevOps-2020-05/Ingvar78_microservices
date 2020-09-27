#!/bin/bash

for instance in worker-0 worker-1 worker-2; do
cat > ${instance}-csr.json <<EOF
{
  "CN": "system:node:${instance}",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "US",
      "L": "Portland",
      "O": "system:nodes",
      "OU": "Kubernetes The Hard Way",
      "ST": "Oregon"
    }
  ]
}
EOF

EXTERNAL_IP=$(yc compute instance get ${instance} \
  | grep -A1 one_to_one_nat: \
  | grep -oE '\b[0-9]{1,3}(\.[0-9]{1,3}){3}\b')

INTERNAL_IP=$(yc compute instance get ${instance} \
  | grep -A1 primary_v4_address: \
  | grep -oE '\b[0-9]{1,3}(\.[0-9]{1,3}){3}\b')

cfssl gencert \
  -ca=ca.pem \
  -ca-key=ca-key.pem \
  -config=ca-config.json \
  -hostname=${instance},${EXTERNAL_IP},${INTERNAL_IP} \
  -profile=kubernetes \
  ${instance}-csr.json | cfssljson -bare ${instance}
done
