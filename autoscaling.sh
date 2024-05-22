kubectl autoscale deployment backend-feed --cpu-percent=70 --min=3 --max=5
kubectl autoscale deployment backend-user --cpu-percent=70 --min=3 --max=5