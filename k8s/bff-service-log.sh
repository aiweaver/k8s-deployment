#!/bin/bash

kubectl exec -it $(kubectl get pod -l app=bff-service -o jsonpath="{.items[0].metadata.name}") -- tail -n 1000 -f bff-service
