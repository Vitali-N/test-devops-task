
variable "environment" {
  description = "Deployment environment"
  type        = string
}


variable "frontend_namespace" {
  type        = string
}

variable "frontend_image_tag" {
  description = "Docker image tag for frontend"
  type        = string
}

variable "frontend_replica_count" {
  description = "Number of replicas for frontend"
  type        = number
}


variable "backend_namespace" {
  type        = string
}

variable "backend_image_tag" {
  description = "Docker image tag for backend"
  type        = string
}

variable "backend_replica_count" {
  description = "Number of replicas for backend"
  type        = number
}





variable "db_namespace" {
  type        = string
}

variable "db_image_tag" {
  description = "Docker image tag for database"
  type        = string
}

variable "db_replica_count" {
  description = "Number of replicas for database"
  type        = number
}




variable "db_name" {
  type        = string
}

variable "db_password" {
  type        = string
  sensitive = true
}

variable "db_memory_request" {
  type        = string
}

variable "db_memory_limit" {
  type        = string
}

variable "db_storage_size" {
  type        = string
}





variable "pg_volume" {
  type        = string
}

variable "pg_claim" {
  type        = string
}