#!/bin/bash

export POD=$(kubectl get pods --namespace kube-system -l "k8s-app=kubernetes-dashboard" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD 8443:8443 -n kube-system > /dev/null 2>&1 &
