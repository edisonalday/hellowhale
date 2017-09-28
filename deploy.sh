#!/usr/bin/env bash

IMAGE_NAME="ealday/hellowhale:${BUILD_NUMBER}"
kubectl set image deployment/hellowhale hellowhale=$IMAGE_NAME
echo "Create the external-dns service deployment"
kubectl config set-cluster current-cluster --server=${KUBERNETES_SERVER} --insecure-skip-tls-verify=true
kubectl apply -f hellowhale.yaml --cluster=current-cluster --token=${KUBERNETES_DEF_AUTH_TOKEN} --namespace=default