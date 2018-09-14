#!/bin/bash

export POD=$(kubectl get pods --namespace default -l "cluster=spin-deck" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward --namespace default $POD 9000 -n default > /dev/null 2>&1 &
