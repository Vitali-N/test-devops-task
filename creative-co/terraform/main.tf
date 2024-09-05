provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}





module "frontend" {
  source = "./modules/frontend"
  environment   = var.environment
  namespace     = "var.frontend_namespace-${var.environment}"
  image_tag     = var.frontend_image_tag
  replica_count = var.frontend_replica_count
}

module "backend" {
  source = "./modules/backend"
  environment   = var.environment
  namespace     = "var.backend_namespace-${var.environment}"
  image_tag     = var.backend_image_tag
  replica_count = var.backend_replica_count
}


module "db" {
  source = "./modules/db"
  environment     = var.environment
  namespace       = var.db_namespace
  image_tag       = var.db_image_tag
  replica_count   = var.db_replica_count
  db_password     = var.db_password 
  db_name         = var.db_name   
  memory_request  = var.db_memory_request 
  memory_limit    = var.db_memory_limit 
  storage_size    = var.db_storage_size
}


# # optional
# module "persistent_volumes" {
#   source = "./modules/persistent_volumes"
#   environment     = var.environment
#   namespace       = "${var.db_namespace}-${var.environment}"
#   pg_volume       = var.pg_volume
#   pg_claim        = var.pg_claim
# }



