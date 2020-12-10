# NSQ

[NSQ by PayFit](https://github.com/PayFit/charts) - Deploy NSQ with a Helm chart

## TL;DR;

```console
$ helm repo add nsq https://payfit.github.io/charts/
$ helm repo update
$ helm install  nsq/nsq -n  --version=0.1.0
```

## Introduction

This chart deploys NSQ on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites

- None

## Installing the Chart

To install the chart with the release name ``:

```console
$ helm install  nsq/nsq
```

The command deploys NSQ on the Kubernetes cluster in the default configuration. The [configuration](#configuration) section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the ``:

```console
$ helm delete 
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following table lists the configurable parameters of the `nsq` chart and their default values.

|                Parameter                | Description |    Default     |
|-----------------------------------------|-------------|----------------|
| global.nsqadmin.nameOverride            |             | `"nsqadmin"`   |
| global.nsqadmin.fullnameOverride        |             | `"nsqadmin"`   |
| global.nsqadmin.serviceAccount.create   |             | `true`         |
| global.nsqd.nameOverride                |             | `"nsqd"`       |
| global.nsqd.fullnameOverride            |             | `"nsqd"`       |
| global.nsqd.serviceAccount.create       |             | `true`         |
| global.nsqlookupd.nameOverride          |             | `"nsqlookupd"` |
| global.nsqlookupd.fullnameOverride      |             | `"nsqlookupd"` |
| global.nsqlookupd.serviceAccount.create |             | `true`         |
| nsqadmin.replicaCount                   |             | `3`            |
| nsqd.replicaCount                       |             | `3`            |
| nsqlookupd.replicaCount                 |             | `3`            |


Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example:

```console
$ helm install  nsq/nsq --set global.nsqadmin.nameOverride="nsqadmin"
```

Alternatively, a YAML file that specifies the values for the parameters can be provided while
installing the chart. For example:

```console
$ helm install  nsq/nsq --values values-additional.yaml
```
