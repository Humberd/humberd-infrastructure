provider "kubernetes" {
  load_config_file = false
  host = var.kubernetes_host
  cluster_ca_certificate = base64decode(var.kubernetes_cluster_ca_certificate)
  token = base64decode(var.kubernetes_token)
}

locals {
  namespace = "cert-manager"
}

data "helm_repository" "lets-encrypt" {
  name = "jetstack"
  url = "https://charts.jetstack.io"
}

resource "helm_release" "cert-manager" {
  chart = "jetstack/cert-manager"
  name = "cert-manager"
}

