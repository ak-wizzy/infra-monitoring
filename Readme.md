# Private Cloud Infrastructure Monitoring Stack

A cloud-native infrastructure monitoring, logging, observability, and endpoint monitoring platform built with Docker, GitHub Actions CI/CD, Docker Hub, Prometheus, Grafana, Loki, Promtail, Alertmanager, cAdvisor, Blackbox Exporter, and Traefik reverse proxy.

---

# Overview

This project provides centralized:

* Infrastructure monitoring
* Docker container monitoring
* Centralized log aggregation
* SSL certificate monitoring
* Endpoint health monitoring
* Metrics visualization
* Alerting and notification management
* Reverse proxy integration
* Automated CI/CD container deployment

The platform is designed for self-hosted environments and follows a modern GitHub Actions → Docker Hub → Portainer deployment workflow.

---

# Core Components

| Service           | Purpose                                            |
| ----------------- | -------------------------------------------------- |
| Traefik           | Reverse proxy, SSL termination, and HTTPS routing  |
| Prometheus        | Metrics collection, scraping, and alert evaluation |
| Grafana           | Dashboards and observability visualization         |
| Loki              | Centralized log aggregation platform               |
| Promtail          | Log shipping agent for Docker and Linux logs       |
| Alertmanager      | Alert routing and notification management          |
| Node Exporter     | Host-level Linux system metrics exporter           |
| cAdvisor          | Docker container resource monitoring and metrics   |
| Blackbox Exporter | SSL certificate, endpoint, and uptime monitoring   |

---

# Observability Features

## Infrastructure Monitoring

* CPU utilization monitoring
* Memory utilization monitoring
* Disk usage tracking
* Network throughput visibility
* Host uptime monitoring

## Docker Container Monitoring

* Per-container CPU usage
* Per-container memory usage
* Container network traffic
* Container restart detection
* Running container tracking

## Centralized Logging

* Docker container log aggregation
* Linux host log collection
* Grafana log dashboards
* Centralized log search and filtering

## SSL & Endpoint Monitoring

* SSL certificate expiration monitoring
* HTTPS endpoint health checks
* HTTP response validation
* TLS version visibility
* Endpoint availability monitoring

---

# CI/CD Workflow

```text
GitHub Push
    ↓
GitHub Actions Build Pipeline
    ↓
Docker Hub Image Push
    ↓
Portainer Stack Pull
    ↓
Container Deployment
```

---

# Deployment Architecture

The stack uses:

* Docker Compose orchestration
* External Docker bridge networks
* Reverse proxy routing via Traefik
* Service-to-service Docker DNS resolution
* GitHub Actions image automation
* Docker Hub centralized image repository

---

# Features

* Docker-based deployment
* GitHub Actions CI/CD automation
* Docker Hub image distribution
* Grafana dashboards
* Prometheus alerting
* Loki centralized logging
* SSL certificate monitoring
* Endpoint uptime monitoring
* Traefik reverse proxy integration
* OIDC/SSO-ready architecture
* Infrastructure observability

---

# Network Architecture

## Monitoring Network

Internal Docker network for:

* Prometheus
* Grafana
* Loki
* Promtail
* Alertmanager
* Node Exporter
* cAdvisor
* Blackbox Exporter

## Reverse Proxy Network

External-facing Docker network for:

* Grafana
* Alertmanager
* Traefik ingress routing

---

# Repository Structure

```text
infra-monitoring/
├── .github/workflows/
├── deploy/
├── prometheus/
├── grafana/
├── loki/
├── promtail/
├── alertmanager/
├── node-exporter/
├── cadvisor/
├── blackbox/
└── README.md
```

---

# Deployment Strategy

Services are deployed through:

* GitHub Actions CI/CD
* Docker Hub image publishing
* Portainer stack deployment

This deployment model removes dependency on local bind-mounted configuration updates and enables centralized image-based infrastructure management.

---

# Future Enhancements

* OIDC SSO integration
* Telegram alert notifications
* Slack alert notifications
* Multi-node monitoring
* Windows VM monitoring
* Linux VM monitoring
* Distributed log ingestion
* Long-term metrics retention
* Grafana alerting optimization
* Service health scoring
* Synthetic transaction monitoring

---

# Technology Stack

* Docker
* Docker Compose
* GitHub Actions
* Docker Hub
* Prometheus
* Grafana
* Loki
* Promtail
* Alertmanager
* cAdvisor
* Blackbox Exporter
* Node Exporter
* Traefik

---

# License

Internal Infrastructure Project — AK Techno Services Ltd.
