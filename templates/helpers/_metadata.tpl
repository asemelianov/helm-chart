{{- define "metadata" -}}
  {{- $metaDataObject := dict
    "namespace"     .Release.Namespace
    "labels"        ( merge
                        (include "labels" . | fromYaml)
                        (include "selectorLabels" . | fromYaml)
                    )
    "annotations"   (include "annotations" . | fromYaml)
  -}}
  {{- toYaml $metaDataObject -}}
{{- end -}}
