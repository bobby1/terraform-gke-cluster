variable "credentials_file" {
  description = "GCP project credential"
}

variable "gke_num_nodes" {
  default     = 1
  description = "number of gke nodes"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
}

variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "project" {
  description = "Local Project name"
}

variable "project_id" {
  description = "GCP project id"
}

variable "region" {
  description = "GCP region"
}

variable "zone" {
  description = "GCP zone in region for deployment"
}
