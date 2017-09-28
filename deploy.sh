#!/usr/bin/env bash

echo "Create the hellowhale service deployment"
kubectl create -f hellowhale_pod.yaml 
kubectl create -f hellowhale_service.yaml