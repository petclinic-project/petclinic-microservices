{{/*
Expand the name of the chart.
*/}}
{{- define "petclinic-service.name" -}}
{{- .Release.Name }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "petclinic-service.labels" -}}
app: {{ include "petclinic-service.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "petclinic-service.selectorLabels" -}}
app: {{ include "petclinic-service.name" . }}
{{- end }}
