variable "credentials" {
  type        = string
  default     = "D:/data_engineer_project/creds/my-creds.json"
  description = "Credentials"
}

variable "app_name" {
  type        = string
  default     = "mage-data-prep"
  description = "App name"
}

variable "container_cpu" {
  default     = "2000m"
  description = "Container CPU"
}

variable "container_memory" {
  default     = "2G"
  description = "Container Memory"
}

variable "project_id" {
  default     = "retail-sales-437510"
  description = "Project ID"
}

variable "region" {
  default     = "us-central1"
  description = "The default compute region"
}

variable "zone" {
  default     = "us-central1-a"
  description = "The default compute zone"
}

variable "repository" {
  type        = string
  default     = "mage-data-prep"
  description = "The name of the Artifact Registry repository to be created"
}

variable "db_user" {
  type        = string
  default     = "mageuser"
  description = "The username of the Postgres database"
}

variable "db_password" {
  type        = string
  sensitive   = true
  description = "The Password of the Postgres database"
}

variable "docker_image" {
  type        = string
  default     = "mageai/mageai:latest"
  description = "The docker image to deploy to CLoud run "
}

variable "domain" {
  type        = string
  default     = ""
  description = "The domain name to run the load balancer on. Use if ssl is true"
}

variable "ssl" {
  type        = bool
  default     = false
  description = "Run load balancer on HTTPS and provision managed certificate with provided `domain`"
}
