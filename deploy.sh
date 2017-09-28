#!/usr/bin/env bash

echo "Create the hellowhale service deployment"
kubectl config --server=${KUBERNETES_SERVER} --insecure-skip-tls-verify=true
kubectl apply -f hellowhale_pod.yaml --token=${KUBERNETES_DEF_AUTH_TOKEN} --namespace=default
kubectl apply -f hellowhale_service.yaml --token=${KUBERNETES_DEF_AUTH_TOKEN} --namespace=default