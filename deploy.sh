#!/usr/bin/env bash

echo "Create the hellowhale service deployment"
kubectl apply -f hellowhale_deployment.yaml 
kubectl set image deployment/hellowhale hellowhale=$IMAGE_NAME
kubectl apply -f hellowhale_pod.yaml 
kubectl apply -f hellowhale_service.yaml