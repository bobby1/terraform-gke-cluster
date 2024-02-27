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
# Output is organized in logical information groups rather than alphabetical order.
output "region" {
  value       = var.region
  description = "GCP Region"
}

output "project_id" {
  value       = var.project_id
  description = "GCP Project ID"
}

output "project" {
  value       = var.project
  description = "Local Project name"
}

# Kubernetes cluster info
output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE Cluster Host"
}
