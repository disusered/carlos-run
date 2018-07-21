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

# Install cluster dependencies
make dependencies

# Configure https
make tls
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

### HTTPS

TLS is handled by [Let's Encrypt](https://letsencrypt.org) managed by [`cert-manager`](https://github.com/jetstack/cert-manager). It is installed to the cluster via [`helm`](https://helm.sh/). Below are additional commands for reviewing the configuration.

```bash
# Delete issuer along with its service account and secrets
make tls-delete

# List issuers
kubectl get issuers
```

## Dependencies

- [gcloud](https://cloud.google.com/sdk/gcloud/)
- [kubectl](https://cloud.google.com/kubernetes-engine/docs/quickstart)
- [docker](https://www.docker.com/)
- [helm](https://helm.sh/)
