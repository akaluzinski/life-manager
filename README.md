# Lint the chart
helm lint life-manager

# Install the chart
helm install habits ./life-manager-cluster

# Upgrade after changes
helm upgrade habits ./life-manager-cluster

# Uninstall
helm uninstall habits

# Check pods and services
kubectl get pods
kubectl get svc