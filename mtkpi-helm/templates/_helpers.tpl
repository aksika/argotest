# mtkpi-helm/templates/_helpers.tpl
{{/*
Return the chart name.
*/}}
{{- define "mtkpi.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Return a fully qualified name (release-name + chart name).
*/}}
{{- define "mtkpi.fullname" -}}
{{- $name := default (include "mtkpi.name" .) .Values.fullnameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end }}
