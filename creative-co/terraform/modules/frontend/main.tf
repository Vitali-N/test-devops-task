resource "helm_release" "coffee_shop_frontend" {
  name       = "coffee-shop-frontend"
  chart      = "${path.module}/../../../helm_charts/frontend/coffee-shop-frontend"

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
    file("${path.module}/../../../helm_charts/frontend/coffee-shop-frontend/values-${var.environment}.yaml")
  ]


}
