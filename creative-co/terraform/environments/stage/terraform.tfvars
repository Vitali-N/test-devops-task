environment = "stage"


frontend_namespace      = "frontend"
frontend_image_tag      = "v1.0.0"
frontend_replica_count  = 3

backend_namespace       = "backend"
backend_image_tag       = "v1.0.0"
backend_replica_count   = 3


db_namespace            = "db"
db_image_tag            = "v1.0.0"
db_replica_count        = 2
db_password             = "stage-password"
db_name                 = "stage-db"
db_memory_request       = "512Mi"
db_memory_limit         = "512Mi"
db_storage_size         = "5Gi"


pg_claim  = "256Mi"
pg_volume = "5Gi"