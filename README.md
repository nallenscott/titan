<h1 align="center">
  <img src="titan.png" width="208" alt=""><br>
  titan<br>
</h1>

## Introduction

Titan is a sandbox for deploying [Prometheus](https://prometheus.io), [Thanos](https://thanos.io), and [Grafana](https://grafana.com) to K8s with [ArgoCD](https://argoproj.github.io/cd/).

## Prerequisites

Titan assumes you're running on a Mac, and have the following installed. If you don't have them, you can install them with [Homebrew](https://brew.sh/):

- [Docker](https://www.docker.com/)
- [Kind](https://kind.sigs.k8s.io/)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [ArgoCD](https://argoproj.github.io/argo-cd/getting_started/)
- [Helm](https://helm.sh/)

## Using the cli

Titan provides a cli to help you raise and lower the stack:

```bash
# Boot up clusters
$ ./titan init

# Tear down clusters
$ ./titan kill

# Print help text
$ ./titan help
```
