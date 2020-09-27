export KUBERNETES_PUBLIC_ADDRESS=84.201.133.71

для worker нод:

for instance in 0 1 2; do
  export EXTERNAL_IP_WORKER_${instance}=$(yc compute instance get worker-${instance} \
  | grep -A1 one_to_one_nat: \
  | grep -oE '\b[0-9]{1,3}(\.[0-9]{1,3}){3}\b')
done

для master нод:

for instance in 0 1 2; do
  export EXTERNAL_IP_MASTER_${instance}=$(yc compute instance get master-${instance} \
  | grep -A1 one_to_one_nat: \
  | grep -oE '\b[0-9]{1,3}(\.[0-9]{1,3}){3}\b')
done


echo ${KUBERNETES_PUBLIC_ADDRESS}


yc compute instance list

+----------------------+----------+---------------+---------+-----------------+-------------+
|          ID          |   NAME   |    ZONE ID    | STATUS  |   EXTERNAL IP   | INTERNAL IP |
+----------------------+----------+---------------+---------+-----------------+-------------+
| fhm3ron5090ggniic7rt | master-0 | ru-central1-a | RUNNING | 178.154.224.213 | 10.240.0.10 |
| fhm44evqepktrc92rjd0 | worker-1 | ru-central1-a | RUNNING | 178.154.226.228 | 10.240.0.21 |
| fhmdm6ui39g1v713jt2s | master-2 | ru-central1-a | RUNNING | 178.154.226.172 | 10.240.0.12 |
| fhml8avsfj02a699smcu | worker-0 | ru-central1-a | RUNNING | 178.154.224.30  | 10.240.0.20 |
| fhmn6kfac0sr3ipb2tr2 | master-1 | ru-central1-a | RUNNING | 178.154.226.88  | 10.240.0.11 |
| fhmufb48hgrea8d3c779 | worker-2 | ru-central1-a | RUNNING | 178.154.227.104 | 10.240.0.22 |
+----------------------+----------+---------------+---------+-----------------+-------------+
