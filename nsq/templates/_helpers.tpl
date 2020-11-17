{{/*
Shared template for nsqadmin chart
*/}}

{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "nsqadmin.name" -}}
{{- default .Chart.Name .Values.nsqadmin.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "nsqadmin.fullname" -}}
{{- if .Values.nsqadmin.fullnameOverride }}
{{- .Values.nsqadmin.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nsqadmin.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "nsqadmin.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "nsqadmin.labels" -}}
helm.sh/chart: {{ include "nsqadmin.chart" . }}
{{ include "nsqadmin.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "nsqadmin.selectorLabels" -}}
app.kubernetes.io/name: {{ include "nsqadmin.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "nsqadmin.serviceAccountName" -}}
{{- if .Values.nsqadmin.serviceAccount.create }}
{{- default (include "nsqadmin.fullname" .) .Values.nsqadmin.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.nsqadmin.serviceAccount.name }}
{{- end }}
{{- end }}


{{/*
Shared template for nsqd chart
*/}}

{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "nsqd.name" -}}
{{- default .Chart.Name .Values.nsqd.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "nsqd.fullname" -}}
{{- if .Values.nsqd.fullnameOverride }}
{{- .Values.nsqd.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nsqd.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "nsqd.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "nsqd.labels" -}}
helm.sh/chart: {{ include "nsqd.chart" . }}
{{ include "nsqd.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "nsqd.selectorLabels" -}}
app.kubernetes.io/name: {{ include "nsqd.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "nsqd.serviceAccountName" -}}
{{- if .Values.nsqd.serviceAccount.create }}
{{- default (include "nsqd.fullname" .) .Values.nsqd.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.nsqd.serviceAccount.name }}
{{- end }}
{{- end }}


{{/*
Shared template for nsqlookupd chart
*/}}

{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "nsqlookupd.name" -}}
{{- default .Chart.Name .Values.nsqlookupd.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "nsqlookupd.fullname" -}}
{{- if .Values.nsqlookupd.fullnameOverride }}
{{- .Values.nsqlookupd.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nsqlookupd.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "nsqlookupd.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "nsqlookupd.labels" -}}
helm.sh/chart: {{ include "nsqlookupd.chart" . }}
{{ include "nsqlookupd.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "nsqlookupd.selectorLabels" -}}
app.kubernetes.io/name: {{ include "nsqlookupd.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "nsqlookupd.serviceAccountName" -}}
{{- if .Values.nsqlookupd.serviceAccount.create }}
{{- default (include "nsqlookupd.fullname" .) .Values.nsqlookupd.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.nsqlookupd.serviceAccount.name }}
{{- end }}
{{- end }}
