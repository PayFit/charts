# nsq

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.1.0](https://img.shields.io/badge/AppVersion-v1.1.0-informational?style=flat-square)

NSQ Helm chart

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| PayFit | squad-sre@payfit.com |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| nsqadmin.affinity | object | `{}` |  |
| nsqadmin.args[0] | string | `"--config=/etc/nsq/nsq-admin.cfg"` |  |
| nsqadmin.autoscaling.enabled | bool | `false` |  |
| nsqadmin.autoscaling.maxReplicas | int | `100` |  |
| nsqadmin.autoscaling.minReplicas | int | `1` |  |
| nsqadmin.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| nsqadmin.fullnameOverride | string | `""` |  |
| nsqadmin.image.pullPolicy | string | `"IfNotPresent"` |  |
| nsqadmin.image.repository | string | `"nsqio/nsq"` |  |
| nsqadmin.image.tag | string | `""` |  |
| nsqadmin.imagePullSecrets | list | `[]` |  |
| nsqadmin.ingress.annotations | object | `{}` |  |
| nsqadmin.ingress.enabled | bool | `false` |  |
| nsqadmin.ingress.hosts[0].host | string | `"chart-example.local"` |  |
| nsqadmin.ingress.hosts[0].paths | list | `[]` |  |
| nsqadmin.ingress.tls | list | `[]` |  |
| nsqadmin.nameOverride | string | `""` |  |
| nsqadmin.nodeSelector | object | `{}` |  |
| nsqadmin.podAnnotations | object | `{}` |  |
| nsqadmin.podSecurityContext | object | `{}` |  |
| nsqadmin.priorityClassName | string | `""` |  |
| nsqadmin.replicaCount | int | `3` |  |
| nsqadmin.resources | object | `{}` |  |
| nsqadmin.securityContext | object | `{}` |  |
| nsqadmin.service.type | string | `"ClusterIP"` |  |
| nsqadmin.serviceAccount.annotations | object | `{}` |  |
| nsqadmin.serviceAccount.create | bool | `true` |  |
| nsqadmin.serviceAccount.name | string | `""` |  |
| nsqadmin.tolerations | list | `[]` |  |
| nsqd.affinity | object | `{}` |  |
| nsqd.args[0] | string | `"--broadcast-address=$(POD_IP)"` |  |
| nsqd.args[1] | string | `"--config=/etc/nsq/nsqd.cfg"` |  |
| nsqd.autoscaling.enabled | bool | `false` |  |
| nsqd.autoscaling.maxReplicas | int | `100` |  |
| nsqd.autoscaling.minReplicas | int | `1` |  |
| nsqd.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| nsqd.fullnameOverride | string | `""` |  |
| nsqd.image.pullPolicy | string | `"IfNotPresent"` |  |
| nsqd.image.repository | string | `"nsqio/nsq"` |  |
| nsqd.image.tag | string | `""` |  |
| nsqd.imagePullSecrets | list | `[]` |  |
| nsqd.ingress.annotations | object | `{}` |  |
| nsqd.ingress.enabled | bool | `false` |  |
| nsqd.ingress.hosts[0].host | string | `"chart-example.local"` |  |
| nsqd.ingress.hosts[0].paths | list | `[]` |  |
| nsqd.ingress.tls | list | `[]` |  |
| nsqd.metrics.enabled | bool | `false` |  |
| nsqd.metrics.image.pullPolicy | string | `"IfNotPresent"` |  |
| nsqd.metrics.image.repository | string | `"emaincourt/nsq_exporter"` |  |
| nsqd.metrics.image.tag | string | `"1.1.0"` |  |
| nsqd.metrics.prometheusRule.additionalLabels | object | `{}` |  |
| nsqd.metrics.prometheusRule.enabled | bool | `false` |  |
| nsqd.metrics.prometheusRule.namespace | string | `""` |  |
| nsqd.metrics.prometheusRule.rules | list | `[]` |  |
| nsqd.metrics.serviceMonitor.enabled | bool | `false` |  |
| nsqd.nameOverride | string | `""` |  |
| nsqd.nodeSelector | object | `{}` |  |
| nsqd.persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| nsqd.persistence.enabled | bool | `true` |  |
| nsqd.persistence.mountPath | string | `"/data"` |  |
| nsqd.persistence.size | string | `"1G"` |  |
| nsqd.podAnnotations | object | `{}` |  |
| nsqd.podSecurityContext | object | `{}` |  |
| nsqd.replicaCount | int | `3` |  |
| nsqd.resources | object | `{}` |  |
| nsqd.securityContext | object | `{}` |  |
| nsqd.service.externalTrafficPolicy | string | `nil` |  |
| nsqd.service.port | int | `80` |  |
| nsqd.service.type | string | `"ClusterIP"` |  |
| nsqd.serviceAccount.annotations | object | `{}` |  |
| nsqd.serviceAccount.create | bool | `true` |  |
| nsqd.serviceAccount.name | string | `""` |  |
| nsqd.tolerations | list | `[]` |  |
| nsqlookupd.affinity | object | `{}` |  |
| nsqlookupd.args | list | `[]` |  |
| nsqlookupd.autoscaling.enabled | bool | `false` |  |
| nsqlookupd.autoscaling.maxReplicas | int | `100` |  |
| nsqlookupd.autoscaling.minReplicas | int | `1` |  |
| nsqlookupd.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| nsqlookupd.fullnameOverride | string | `""` |  |
| nsqlookupd.image.pullPolicy | string | `"IfNotPresent"` |  |
| nsqlookupd.image.repository | string | `"nsqio/nsq"` |  |
| nsqlookupd.image.tag | string | `""` |  |
| nsqlookupd.imagePullSecrets | list | `[]` |  |
| nsqlookupd.ingress.annotations | object | `{}` |  |
| nsqlookupd.ingress.enabled | bool | `false` |  |
| nsqlookupd.ingress.hosts[0].host | string | `"chart-example.local"` |  |
| nsqlookupd.ingress.hosts[0].paths | list | `[]` |  |
| nsqlookupd.ingress.tls | list | `[]` |  |
| nsqlookupd.nameOverride | string | `""` |  |
| nsqlookupd.nodeSelector | object | `{}` |  |
| nsqlookupd.podAnnotations | object | `{}` |  |
| nsqlookupd.podSecurityContext | object | `{}` |  |
| nsqlookupd.replicaCount | int | `3` |  |
| nsqlookupd.resources | object | `{}` |  |
| nsqlookupd.securityContext | object | `{}` |  |
| nsqlookupd.service.type | string | `"ClusterIP"` |  |
| nsqlookupd.serviceAccount.annotations | object | `{}` |  |
| nsqlookupd.serviceAccount.create | bool | `true` |  |
| nsqlookupd.serviceAccount.name | string | `""` |  |
| nsqlookupd.tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.3.0](https://github.com/norwoodj/helm-docs/releases/v1.3.0)
