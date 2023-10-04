{{- define "selectorLabels" -}}
  {{- $releaseLabels := dict
    "app.kubernetes.io/name"        (include "formatName" (print .Release.Name))
    "app.kubernetes.io/instance"    .Release.Name
  -}}
  {{- $releaseLabels | toYaml -}}
{{- end -}}
