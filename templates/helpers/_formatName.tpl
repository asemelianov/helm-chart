{{- define "formatName" -}}
  {{ (toString .) | trunc 63 | trimSuffix "-" -}}
{{- end }}
