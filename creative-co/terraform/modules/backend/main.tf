resource "helm_release" "coffee_shop_backend" {
  name       = "coffee-shop-backend"
  chart      = "${path.module}/../../../helm_charts/backend/coffee-shop-backend"

  namespace  = var.namespace
  
  set {
    name  = "image.tag"
    value = var.image_tag
  }

  set {
    name  = "replicaCount"
    value = var.replica_count
  }
  
  values = [
    file("${path.module}/../../../helm_charts/backend/coffee-shop-backend/values-${var.environment}.yaml")
  ]

  
}
