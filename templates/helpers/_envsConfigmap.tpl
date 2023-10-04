{{- define "envsConfigmap" -}}
NEXT_PUBLIC_API_URL: {{ .Values.envs.app.url | quote }}
NEXT_PUBLIC_KEY: {{ .Values.envs.app.key | quote }}
TARGET_ENV: {{ .Values.envs.app.target | quote }}
{{- end -}}
