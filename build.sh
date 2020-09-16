docker build -t python -f python.Dockerfile .
docker tag python reg.alta3.com/3245-gottreu-python-api
docker push reg.alta3.com/3245-gottreu-python-api
kubectl delete -f ~/websvc.yaml 
kubectl apply -f ~/websvc.yaml
kubectl port-forward api-svc 5000:5000 --address=0.0.0.0
