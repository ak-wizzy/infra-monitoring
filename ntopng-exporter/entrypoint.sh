#!/bin/sh

set -eu

: "${NTOPNG_ENDPOINT:?NTOPNG_ENDPOINT is required}"
: "${NTOPNG_USERNAME:?NTOPNG_USERNAME is required}"
: "${NTOPNG_PASSWORD:?NTOPNG_PASSWORD is required}"

CONFIG_FILE="/config/ntopng-exporter.yaml"

echo "Generating ntopng-exporter configuration..."

envsubst '${NTOPNG_ENDPOINT} ${NTOPNG_USERNAME} ${NTOPNG_PASSWORD}' \
    < /ntopng-exporter.yaml.template \
    > "${CONFIG_FILE}"

chmod 600 "${CONFIG_FILE}"

echo "Starting ntopng-exporter..."

exec /ntopng-exporter