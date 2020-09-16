docker build -t python -f python.Dockerfile .
docker tag python <py image>
docker push <py image>
docker tag python <php image>
docker push <pphp image>
kubectl delete -f ~/websvc.yaml 
kubectl apply -f ~/websvc.yaml
kubectl port-forward api-svc 5000:5000 --address=0.0.0.0
