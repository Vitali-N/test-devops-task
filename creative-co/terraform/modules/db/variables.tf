variable "environment" {
  description = "The environment name"
  type        = string
}


variable "namespace" {
  type        = string
}

variable "image_tag" {
  description = "Docker image tag for database"
  type        = string
}

variable "replica_count" {
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

variable "memory_request" {
  type        = string
}

variable "memory_limit" {
  type        = string
}

variable "storage_size" {
  type        = string
}
