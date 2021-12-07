# proxy-redis-ha

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 4.12.9](https://img.shields.io/badge/AppVersion-4.12.9-informational?style=flat-square)

A wrapper chart around redis-ha to embed prometheus rules

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://dandydeveloper.github.io/charts | redis-ha | 4.12.9 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| prometheusRule.additionalLabels | object | `{}` | Additional labels to be set in metadata. |
| prometheusRule.enabled | bool | `true` | If true, creates a Prometheus Operator PrometheusRule. |
| prometheusRule.interval | string | `nil` | How often rules in the group are evaluated (falls back to `global.evaluation_interval` if not set). |
| prometheusRule.namespace | string | `nil` | Namespace which Prometheus is running in. |
| prometheusRule.rules | list | `[{"alert":"RedisPodDown","annotations":{"description":"Redis pod {{ \"{{ $labels.pod }}\" }} is down","summary":"Redis pod {{ \"{{ $labels.pod }}\" }} is down"},"expr":"redis_up{job=\"{{ include \"redis-ha-wrapper.call-nested\" (list . \"redis-ha\" \"redis-ha.fullname\") }}\"} == 0\n","for":"5m","labels":{"severity":"critical"}}]` | Rules spec template (see https://github.com/prometheus-operator/prometheus-operator/blob/master/Documentation/api.md#rule). |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.3.0](https://github.com/norwoodj/helm-docs/releases/v1.3.0)