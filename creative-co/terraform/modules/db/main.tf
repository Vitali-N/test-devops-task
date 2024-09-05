# PostgreSQL Helm chart deployment
resource "helm_release" "postgresql" {
  name       = "postgresql-${var.environment}"
  namespace  = var.namespace
  chart      = "bitnami/postgresql"
  version    = "11.4.3"

  set {
    name  = "postgresqlPassword"
    value = var.db_password
  }

  set {
    name  = "global.postgresql.postgresqlDatabase"
    value = var.db_name
  }

  set {
    name  = "resources.requests.memory"
    value = var.memory_request
  }

  set {
    name  = "resources.limits.memory"
    value = var.memory_limit
  }

  set {
    name  = "persistence.size"
    value = var.storage_size
  }


  # Adding the custom PVC claim
  set {
    name  = "persistence.existingClaim"
    value = "pg-claim-${var.environment}"
  }


  #values = [file("${path.module}/values.yaml")]
}