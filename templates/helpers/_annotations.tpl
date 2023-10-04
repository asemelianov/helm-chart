{{- define "annotations" -}}
  {{- $annotations := fromYaml "{}" -}}
  {{- if .Values.annotations -}}
    {{- $annotations = .Values.annotations -}}
  {{- end -}}
{{- end -}}
