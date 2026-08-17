# ---------------------------------------------------------
# ntopng-exporter v1.6.0
# Build the upstream exporter from its tagged source
# ---------------------------------------------------------

FROM golang:1.26.4 AS builder

WORKDIR /build

# Download the exact upstream v1.6.0 source
ADD https://github.com/aauren/ntopng-exporter/archive/refs/tags/v1.6.0.tar.gz /tmp/ntopng-exporter.tar.gz

RUN tar -xzf /tmp/ntopng-exporter.tar.gz --strip-components=1 -C /build

ENV CGO_ENABLED=0

RUN go build \
    -ldflags '-s -w' \
    -o /ntopng-exporter


# ---------------------------------------------------------
# Runtime image
# ---------------------------------------------------------

FROM alpine:3.22

RUN apk add --no-cache gettext ca-certificates

COPY --from=builder /ntopng-exporter /ntopng-exporter

COPY entrypoint.sh /entrypoint.sh
COPY ntopng-exporter.yaml.template /ntopng-exporter.yaml.template

RUN chmod +x /entrypoint.sh \
    && mkdir -p /config

EXPOSE 3001

ENTRYPOINT ["/entrypoint.sh"]