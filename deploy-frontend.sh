kubectl delete deployment frontend
kubectl delete service frontend
kubectl delete service publicfrontend

kubectl apply -f k8s/frontend-deployment.yaml
kubectl apply -f k8s/frontend-service.yaml
kubectl expose deployment frontend --type=LoadBalancer --name=publicfrontend --port=80 --target-port=80