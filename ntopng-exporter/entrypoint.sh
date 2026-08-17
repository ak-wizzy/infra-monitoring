#!/bin/sh
set -eu

mkdir -p /config

cat > /config/ntopng-exporter.yaml <<EOF
ntopng:
  endpoint: "${NTOPNG_ENDPOINT}"
  allowUnsafeTLS: false
  user: "${NTOPNG_USERNAME}"
  password: "${NTOPNG_PASSWORD}"
  authMethod: cookie
  scrapeInterval: 15s
  scrapeTargets:
    - hosts
    - interfaces
    - l7protocols

host:
  interfacesToMonitor:
    - em1

metric:
  localSubnetsOnly:
    - "10.50.0.0/24"
  excludeDNSMetrics: false

serve:
  ip: 0.0.0.0
  port: 3001
EOF

exec /usr/local/bin/ntopng-exporter