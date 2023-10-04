{{- define "labels" -}}
  {{- $extraLabels := fromYaml "{}" -}}
  {{- $commonLabels := dict
    "deployment"                    (include "formatName" (print .Release.Name))
  -}}
  {{- if .Values.labels -}}
    {{- $extraLabels = .Values.labels -}}
  {{- end -}}
  {{- merge $commonLabels $extraLabels | toYaml -}}
{{- end -}}
