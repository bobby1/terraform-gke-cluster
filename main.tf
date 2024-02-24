/*
*
*/
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.74.0"
    }
  }
  required_version = ">= 0.14"
}

provider "google" {
  # description = "GCP project credentials"
  credentials = base64decode(file(var.credentials_file))
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}
