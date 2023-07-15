helm install jenkins bitnami/jenkins --create-namespace -n jenkins
kubectl delete service jenkins -n jenkins
kubectl apply -f ./configurations/node-port.yaml -n jenkins
