# carlos.run

> A home page and service

## Getting Started

### First Time

```bash
# Create profile and authenticate
make login

# Create carlos.run domain zone
make domain

# Create Kubernetes cluster
make cluster

# Get cluster credentials
make credentials

# Install and configure helm
make helm
```

## Reference

### Clusters

The main cluster is configured with Google Deployment Manager, its configuration is defined in `gcp/cluster.yaml`. Below are additional commands for managing the cluster.

```bash
# Update cluster
make cluster-update

# Delete cluster
make cluster-delete
```

## Dependencies

- [gcloud](https://cloud.google.com/sdk/gcloud/)
- [kubectl](https://cloud.google.com/kubernetes-engine/docs/quickstart)
- [docker](https://www.docker.com/)
- [helm](https://helm.sh/)
