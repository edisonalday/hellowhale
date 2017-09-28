#!/usr/bin/env bash

echo "Create the hellowhale service deployment"
kubectl create -f hellowhale_deployment.yaml 
kubectl set image deployment/hellowhale hellowhale=$IMAGE_NAME
kubectl create -f hellowhale_pod.yaml 
kubectl create -f hellowhale_service.yaml