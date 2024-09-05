variable "environment" {
  description = "Deployment environment"
  type        = string
}


variable "namespace" {
  type        = string
}


variable "image_tag" {
  description = "Docker image tag"
  type        = string
}

variable "replica_count" {
  description = "Number of replicas"
  type        = number
}
