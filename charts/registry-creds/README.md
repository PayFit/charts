# registry-creds

[Registry Creds](https://github.com/PayFit/charts) - Deploy registry-creds by @alexellis with a Helm chart

## TL;DR;

```console
$ helm repo add registry-creds https://payfit.github.io/charts/
$ helm repo update
$ helm install  registry-creds/registry-creds -n  --version=0.1.0
```

## Introduction

This chart deploys registry-creds on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites

- None

## Installing the Chart

To install the chart with the release name ``:

```console
$ helm install  registry-creds/registry-creds
```

The command deploys registry-creds on the Kubernetes cluster in the default configuration. The [configuration](#configuration) section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the ``:

```console
$ helm delete 
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following table lists the configurable parameters of the `registry-creds` chart and their default values.

|         Parameter          |                                                      Description                                                       |                   Default                    |
|----------------------------|------------------------------------------------------------------------------------------------------------------------|----------------------------------------------|
| replicaCount               |                                                                                                                        | `1`                                          |
| image.repository           | image repository                                                                                                       | `ghcr.io/alexellis/registry-creds`           |
| image.pullPolicy           | Image pull policy                                                                                                      | `IfNotPresent`                               |
| image.tag                  | Overrides the image tag whose default is the chart appVersion.                                                         | `"a3b31a2e9510f56c4ef5b538225facf16a7f9362"` |
| imagePullSecrets           |                                                                                                                        | `[]`                                         |
| nameOverride               |                                                                                                                        | `""`                                         |
| fullnameOverride           |                                                                                                                        | `""`                                         |
| serviceAccount.create      | Specifies whether a service account should be created                                                                  | `false`                                      |
| serviceAccount.annotations | Annotations to add to the service account                                                                              | `{}`                                         |
| serviceAccount.name        | The name of the service account to use. If not set and create is true, a name is generated using the fullname template | `""`                                         |
| podAnnotations             |                                                                                                                        | `{}`                                         |
| podSecurityContext         |                                                                                                                        | `{}`                                         |
| securityContext            | Security context                                                                                                       | `{}`                                         |
| resources.limits.cpu       |                                                                                                                        | `100m`                                       |
| resources.limits.memory    |                                                                                                                        | `64Mi`                                       |
| resources.requests.cpu     |                                                                                                                        | `100m`                                       |
| resources.requests.memory  |                                                                                                                        | `64Mi`                                       |
| nodeSelector               |                                                                                                                        | `{}`                                         |
| tolerations                |                                                                                                                        | `[]`                                         |
| affinity                   |                                                                                                                        | `{}`                                         |


Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example:

```console
$ helm install  registry-creds/registry-creds --set replicaCount=1
```

Alternatively, a YAML file that specifies the values for the parameters can be provided while
installing the chart. For example:

```console
$ helm install  registry-creds/registry-creds --values values-additional.yaml
```
