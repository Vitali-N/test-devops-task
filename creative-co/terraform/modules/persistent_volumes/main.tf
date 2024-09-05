resource "kubernetes_persistent_volume" "pg_volume" {
  metadata {
    name = "pg-volume-${var.environment}"
  }

  spec {
    capacity = {
      storage =  var.pg_volume
    }

    access_modes = ["ReadWriteOnce"]

    persistent_volume_source {
      host_path {
        path = "/mnt/data"
      }
    }

    storage_class_name = "manual"
  }
}





resource "kubernetes_persistent_volume_claim" "pg_claim" {
  metadata {
    name = "pg-claim-${var.environment}"
    namespace = var.namespace
  }
  spec {
    access_modes = ["ReadWriteOnce"]
    resources {
      requests = {
        storage = var.pg_claim
      }
    }
  }
}
