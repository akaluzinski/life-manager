# Lint the chart
helm lint life-manager

# Install the chart
helm install life-manager ./life-manager-cluster

# Upgrade after changes
helm upgrade life-manager ./life-manager-cluster

# Uninstall
helm uninstall life-manager

# Check pods and services
```bash
kubectl get pods
kubectl get svc
```

# Verify database
```bash
kubectl exec -it postgres-0 -- psql -U postgres -d habitdb -c "SELECT * FROM user_account;"
kubectl exec -it postgres-0 -- psql -U postgres -d habitdb -c "SELECT * FROM habit;"
```