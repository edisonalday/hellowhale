#!/usr/bin/env bash

echo "Create the hellowhale service deployment"

kubectl apply -f hellowhale_deployment.yaml --IMAGE_NAME="ealday/hellowhale:${BUILD_NUMBER}"
kubectl apply -f hellowhale_pod.yaml --IMAGE_NAME="ealday/hellowhale:${BUILD_NUMBER}"
kubectl apply -f hellowhale_service.yaml