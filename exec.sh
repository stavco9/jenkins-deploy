#!/bin/bash

POD_NAME=$(kubectl get pod -n jenkins -l app=jenkins -l role=master -o jsonpath={.items[0].metadata.name})

kubectl exec -it "${POD_NAME}" -- /bin/bash
