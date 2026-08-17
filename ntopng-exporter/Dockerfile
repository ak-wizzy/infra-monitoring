FROM alpine:3.22

RUN apk add --no-cache ca-certificates

COPY --from=aauren/ntopng-exporter:v1.6.0 /ntopng-exporter /usr/local/bin/ntopng-exporter
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 3001

ENTRYPOINT ["/entrypoint.sh"]