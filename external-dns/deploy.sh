#!/usr/bin/env bash

echo "Create the external-dns service deployment"
kubectl config set-cluster current-cluster --server=${KUBERNETES_SERVER} --insecure-skip-tls-verify=true
kubectl apply -f external-dns/external-dns.yaml 