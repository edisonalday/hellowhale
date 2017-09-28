#!/usr/bin/env bash

echo "Create the hellowhale service deployment"
kubectl set -f hellowhale_pod.yaml 
kubectl set -f hellowhale_service.yaml