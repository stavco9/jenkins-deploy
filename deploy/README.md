This section deploys the jenkins configuration to Kubernetes
Requirements:
1) This configuration was configured on a managed Kubernetes cluster in DigitalOcean cloud
2) The Kubernetes cluster has a central ingress controller with a wildcard DNS record points to the ingress LB
3) (Optional): The Kubernetes cluster has a central cert manager for automatic certificate management for tls ingress. If the cluster does not have cert manager, the tls section in the ingress file should be marked
4) If the cluster is not in DigitalOcean cloud, the storage class of the persistent storage depends at your cloud provider storage service https://kubernetes.io/docs/concepts/storage/persistent-volumes/

please run the following commands:

1) kubectl apply -f namespace.yaml
2) kubectl apply -f service-account.yaml
3) kubectl apply -f role.yaml
4) kubectl apply -f role-binding.yaml
5) kubectl apply -f persistent-volume-claim.yaml
6) kubectl apply -f deployment.yaml
7) kubectl apply -f service.yaml
8) kubectl apply -f ingress.yaml
