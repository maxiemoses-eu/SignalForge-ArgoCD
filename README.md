# SignalForge-ArgoCD


---

##  Helm Strategy

- One reusable chart for backend services (`service-chart`)
- Service-specific configuration via `helm-values/*.yaml`
- Dedicated charts for UI and Gateway

This avoids duplication and configuration drift.

---

##  ArgoCD Strategy

All workloads are deployed via a single `ApplicationSet`:
- Backend services
- Gateway
- Store UI

ArgoCD provides:
- Automated sync
- Drift detection
- Self-healing
- Pruning of deleted resources

---

##  Gateway (BFF)

The NGINX gateway:
- Routes UI and API traffic
- Adds security headers
- Acts as a Backend-for-Frontend
- Emits structured logs for SignalForge observability

---

## ❌ What This Repo Does NOT Do

- Build Docker images
- Provision infrastructure
- Generate secrets

Those concerns live in CI and infrastructure repositories.

---

##  Status

This repository follows production-grade GitOps best practices and is
ready for staging and production environments.
