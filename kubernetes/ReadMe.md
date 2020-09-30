minikube start

kubectl get nodes


iva@c8hard kubernetes (kubernetes-2 *) $ kubectl get nodes
NAME       STATUS   ROLES    AGE   VERSION
minikube   Ready    master   47h   v1.19.2

iva@c8hard kubernetes (kubernetes-2 *%) $ cat ~/.kube/config
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: LS0tLSR0******URS0tLS0tCg==
    server: https://84.201.133.71:6443
  name: kubernetes-the-hard-way
- cluster:
    certificate-authority: /home/iva/.minikube/ca.crt
    server: https://172.17.0.3:8443
  name: minikube
contexts:
- context:
    cluster: kubernetes-the-hard-way
    user: admin
  name: kubernetes-the-hard-way
- context:
    cluster: minikube
    user: minikube
  name: minikube
current-context: minikube
kind: Config
preferences: {}
users:
- name: admin
  user:
    client-certificate: /home/iva/Documents/Otus/Ingvar78_microservices/kubernetes/the_hard_way/admin.pem
    client-key: /home/iva/Documents/Otus/Ingvar78_microservices/kubernetes/the_hard_way/admin-key.pem
- name: minikube
  user:
    client-certificate: /home/iva/.minikube/profiles/minikube/client.crt
    client-key: /home/iva/.minikube/profiles/minikube/client.key


Обычно порядок конфигурирования kubectl следующий:
    1. Создать cluster:
    $ kubectl config set-cluster ... cluster_name

    2. Создать данные пользователя (credentials)
    $ kubectl config set-credentials ... user_name

    3. Создать контекст
    $ kubectl config set-context context_name \
    --cluster=cluster_name \
    --user=user_name

    4. Использовать контекст
    $ kubectl config use-context context_name

iva@c8hard kubernetes (kubernetes-2 *%) $ kubectl config current-context
minikube

iva@c8hard kubernetes (kubernetes-2 *%) $ kubectl config get-contexts
CURRENT   NAME                      CLUSTER                   AUTHINFO   NAMESPACE
          kubernetes-the-hard-way   kubernetes-the-hard-way   admin
*         minikube                  minikube                  minikube


iva@c8hard reddit (kubernetes-2 *%) $ kubectl apply -f ui-deployment.yml
deployment.apps/ui created

iva@c8hard reddit (kubernetes-2 *%) $ kubectl get deployment
NAME   READY   UP-TO-DATE   AVAILABLE   AGE
ui     3/3     3            3           66s


iva@c8hard Ingvar78_microservices (kubernetes-2 *%) $ kubectl apply -f ./kubernetes/reddit
deployment.apps/comment-deployment created
deployment.apps/mongo-deployment created
deployment.apps/post-deployment created
deployment.apps/ui unchanged

iva@c8hard kubernetes (kubernetes-2 *%) $ kubectl get pods --selector component=ui
NAME                  READY   STATUS    RESTARTS   AGE
ui-766677cb46-7zfn9   1/1     Running   0          6m1s
ui-766677cb46-8cfxj   1/1     Running   0          6m1s
ui-766677cb46-whr96   1/1     Running   0          6m1s

iva@c8hard kubernetes (kubernetes-2 *%) $ kubectl get deployment
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
comment-deployment   0/1     1            0           48s
mongo-deployment     1/1     1            1           48s
post-deployment      1/1     1            1           48s
ui                   3/3     3            3           6m8s

iva@c8hard kubernetes (kubernetes-2 *%) $ kubectl apply -f ./reddit
deployment.apps/comment created
service/comment created
deployment.apps/mongo created
deployment.apps/post-deployment unchanged
deployment.apps/ui unchanged

iva@c8hard kubernetes (kubernetes-2 *%) $ kubectl describe service comment
Name:              comment
Namespace:         default
Labels:            app=reddit
                   component=comment
Annotations:       <none>
Selector:          app=reddit,component=comment
Type:              ClusterIP
IP:                10.100.163.187
Port:              <unset>  9292/TCP
TargetPort:        9292/TCP
Endpoints:         172.18.0.10:9292,172.18.0.11:9292,172.18.0.12:9292
Session Affinity:  None
Events:            <none>

iva@c8hard kubernetes (kubernetes-2 *%) $ kubectl exec -ti ui-766677cb46-8cfxj nslookup comment
kubectl exec [POD] [COMMAND] is DEPRECATED and will be removed in a future version. Use kubectl exec [POD] -- [COMMAND] instead.
OCI runtime exec failed: exec failed: container_linux.go:349: starting container process caused "exec: \"nslookup\": executable file not found in $PATH": unknown
command terminated with exit code 126


Crush

minikube delete
rm -rf ~/.minikube/
docker images | grep minikube
Found one image...
docker rmi e3ca409c7daf


iva@c8hard reddit (kubernetes-2 *%=) $ minikube service list
|-------------|------------|--------------|-------------------------|
|  NAMESPACE  |    NAME    | TARGET PORT  |           URL           |
|-------------|------------|--------------|-------------------------|
| default     | comment    | No node port |
| default     | comment-db | No node port |
| default     | kubernetes | No node port |
| default     | mongodb    | No node port |
| default     | post       | No node port |
| default     | post-db    | No node port |
| default     | ui         |         9292 | http://172.17.0.4:32092 |
| kube-system | kube-dns   | No node port |
|-------------|------------|--------------|-------------------------|


minikube addons enable dashboard
