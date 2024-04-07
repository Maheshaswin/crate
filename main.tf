provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_manifest" "crate_frontend_deployment" {
  manifest = file("${path.module}/crate-frontend-deployment.yaml")
}

resource "kubernetes_manifest" "crate_frontend_service" {
  manifest = file("${path.module}/crate-frontend-service.yaml")
}

resource "kubernetes_manifest" "mysql_service" {
  manifest = file("${path.module}/mysql-service.yaml")
}

resource "kubernetes_manifest" "mysql_deployment" {
  manifest = file("${path.module}/mysql-deployment.yaml")
}

resource "kubernetes_manifest" "crate_backend_service" {
  manifest = file("${path.module}/crate-backend-service.yaml")
}

resource "kubernetes_manifest" "crate_backend_deployment" {
  manifest = file("${path.module}/crate-backend-deployment.yaml")
}

resource "kubernetes_manifest" "prometheus_service" {
  manifest = file("${path.module}/prometheus-service.yaml")
}

resource "kubernetes_manifest" "grafana_service" {
  manifest = file("${path.module}/grafana-service.yaml")
}

resource "kubernetes_manifest" "crate_backend_hpa" {
  manifest = file("${path.module}/crate-backend-hpa.yaml")
}
