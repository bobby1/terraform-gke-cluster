/* ================================================================================= 
*  Copyright (c) 2024, Bobby Wen, All Rights Reserved 
*  Use of this source code is governed by a MIT-style
*  license that can be found at https://en.wikipedia.org/wiki/MIT_License.
*
*  Project:    Google Cloud Platform (GCP) Kubernetes examples 
*  Class:      Terraform GCP IaC file
*  Purpose:    Terraform script to create GCP Kubernetes Cluster (GKE)
*  Usage:      terraform (init|plan|apply|destroy)
*  Pre-requisites: Google Cloud Platform project and console access (https://cloud.google.com/docs/get-started), 
*                  Terraform by HashiCorp (https://www.terraform.io/)
*  Beware:     terraform.tfvars file is used to pass environment variable to main.tf.  
*              Sensative information need to be encode to use Terraform's built in base64decode function
* 
*  Developer:  Bobby Wen, Ym9iYnlAd2VuLm9yZwo= (email is base64 encode to prevent file scraping for email addresses)
* ==================================================================================
*/
variable "credentials_file" {
  description = "GCP project credential"
}

// Compute environment setup
variable "environment" {
  description = "SDLC Infrastructure environment: THIS SETS THE DEPLOYMENT ENVIRONMENT"
  type        = string
  default     = "dev"
}

variable "gke_num_nodes" {
  default     = 1
  description = "number of gke nodes"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
  sensitive   = true
}

variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "instance_type" {
  description = "Compute instance type"
  type        = map(string)
  default = {
    dev = "e2-micro"
    stg = "e2-medium"
    prd = "n1-standard-1"
  }
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
