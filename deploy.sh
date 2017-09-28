#!/usr/bin/env bash

echo "Create the hellowhale service deployment"
kubectl create -f hellowhale_pod.yaml --token=${KUBERNETES_DEF_AUTH_TOKEN} --namespace=${KUBERNETES_NAMESPACE}
kubectl create -f hellowhale_service.yaml --token=${KUBERNETES_DEF_AUTH_TOKEN} --namespace=${KUBERNETES_NAMESPACE}