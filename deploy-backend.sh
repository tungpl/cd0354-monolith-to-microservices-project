kubectl delete deployment backend-feed
kubectl delete services backend-feed
kubectl delete deployment backend-user
kubectl delete services backend-user
kubectl delete services reverseproxy
kubectl delete deployment reverseproxy
kubectl delete services publicreverseproxy


kubectl apply -f k8s/env-configmap.yaml
kubectl apply -f secret/env-secret.yaml
kubectl apply -f secret/aws-secret.yaml
kubectl apply -f k8s/backend-feed-deployment.yaml
kubectl apply -f k8s/backend-feed-service.yaml
kubectl apply -f k8s/backend-user-deployment.yaml
kubectl apply -f k8s/backend-user-service.yaml
kubectl apply -f k8s/reverseproxy-deployment.yaml
kubectl apply -f k8s/reverseproxy-service.yaml

kubectl expose deployment reverseproxy --type=LoadBalancer --name=publicreverseproxy --port=8080 --target-port=8080