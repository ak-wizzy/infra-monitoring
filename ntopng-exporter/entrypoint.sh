#!/bin/sh
set -eu

: "${NTOPNG_USERNAME:?NTOPNG_USERNAME is required}"
: "${NTOPNG_PASSWORD:?NTOPNG_PASSWORD is required}"

sed \
  -e "s|__NTOPNG_USERNAME__|${NTOPNG_USERNAME}|g" \
  -e "s|__NTOPNG_PASSWORD__|${NTOPNG_PASSWORD}|g" \
  /ntopng-exporter.yaml.template \
  > /config/ntopng-exporter.yaml

chmod 600 /config/ntopng-exporter.yaml

exec /ntopng-exporter