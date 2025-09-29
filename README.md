# Lint the chart
helm lint life-manager

# Install the chart
helm install life-manager ./life-manager-cluster

# Upgrade after changes
helm upgrade life-manager ./life-manager-cluster

# Uninstall
helm uninstall life-manager

# Check pods and services
kubectl get pods
kubectl get svc

# Verify database
kubectl exec -it <postgres-pod> -- psql -U postgres -d habitdb -c "SELECT * FROM user_account;"
kubectl exec -it <postgres-pod> -- psql -U postgres -d habitdb -c "SELECT * FROM habit;"