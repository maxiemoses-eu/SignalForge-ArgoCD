{{- define "order.name" -}}
order
{{- end }}

{{- define "order.fullname" -}}
{{ .Release.Name }}-{{ include "order.name" . }}
{{- end }}

{{- define "order.labels" -}}
app.kubernetes.io/name: {{ include "order.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "order.selectorLabels" -}}
app.kubernetes.io/name: {{ include "order.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
