FROM aauren/ntopng-exporter:v1.6.0

USER root

COPY entrypoint.sh /entrypoint.sh
COPY ntopng-exporter.yaml.template /ntopng-exporter.yaml.template

RUN chmod +x /entrypoint.sh \
    && mkdir -p /config

ENTRYPOINT ["/entrypoint.sh"]