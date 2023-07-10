kubectl create namespace jenkins
helm install jenkins bitnami/jenkins -n jenkins
kubectl delete service jenkins -n jenkins
kubectl apply -f ./configurations/node-port.yaml -n jenkins
