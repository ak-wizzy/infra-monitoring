# Private Cloud Infra Monitoring Stack

A modern cloud-native infrastructure monitoring and observability platform built with Docker, GitHub Actions CI/CD, Docker Hub, Traefik reverse proxy, Prometheus, Grafana, Loki, Promtail, Alertmanager, and Node Exporter.

---

# Overview

This project provides centralized:

* Infrastructure monitoring
* Metrics collection
* Log aggregation
* Alerting
* Visualization
* Reverse proxy integration
* CI/CD container deployment

The stack is designed for self-hosted environments and follows a GitHub Actions → Docker Hub → Portainer deployment workflow.

---

# Core Components

| Service       | Purpose                                    |
| ------------- | ------------------------------------------ |
| Traefik       | Reverse proxy and SSL termination          |
| Prometheus    | Metrics collection and alert evaluation    |
| Grafana       | Dashboards and observability visualization |
| Loki          | Centralized log aggregation                |
| Promtail      | Log shipping agent                         |
| Alertmanager  | Alert routing and notification handling    |
| Node Exporter | Host-level system metrics exporter         |

---

# CI/CD Workflow

```text
GitHub Push
    ↓
GitHub Actions Build
    ↓
Docker Hub Image Push
    ↓
Portainer Stack Pull
    ↓
Docker Deployment
```

---

# Features

* Docker-based deployment
* GitHub Actions CI/CD
* Docker Hub image distribution
* Prometheus alerting
* Grafana dashboards
* Loki centralized logging
* Traefik reverse proxy integration
* Future-ready OIDC/SSO support
* Infrastructure observability

---

# Network Architecture

* Internal monitoring network
* Reverse proxy network
* Service-to-service Docker DNS resolution
* Optional public exposure via Traefik

---

# Planned Enhancements

* OIDC SSO integration
* HTTPS automation
* Multi-node monitoring
* Container health dashboards
* Application log dashboards
* Slack/Telegram alerting
* Long-term metrics retention

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
└── README.md
```

---

# Deployment Strategy

Services are deployed through:

* GitHub Actions
* Docker Hub
* Portainer stack deployment

No local bind-mounted configuration dependency is required for deployment updates.

---

# License

Internal Infrastructure Project – AK Techno Services Ltd.
