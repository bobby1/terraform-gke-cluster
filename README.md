* Terraform-gke-cluster *

This repo is a branch of Terraform's companion repo to the [Provision a GKE Cluster tutorial](https://developer.hashicorp.com/terraform/tutorials/kubernetes/gke), containing Terraform configuration files to provision an GKE cluster on GCP.

This sample repo also creates a VPC and subnet for the GKE cluster. This is not required but highly recommended to keep your GKE cluster isolated.

This repo has modifications of the code utilizing Google's best practices using Terraform https://cloud.google.com/docs/terraform/best-practices-for-terraform from the original files and formats.

## Pre-requisites

To use this code base, AWS cli, Terraform and Ansible are required to be installed locally on the server.

   * Google Cloud Platform project and console access
  
   * Terraform by HashiCorp (https://www.terraform.io/)
  
## How to use

* To create the example environment using Terraform, in the SDLC directory for the environment to deploy, for example, dev

  $ terraform init

  $ terraform fmt

  $ terraform validate

  $ terraform plan  

        $ terraform plan -out <filename>  is recommended but not required

  $ terraform apply
  
        $ terraform apply <filename>  if -out was used
  
 Once the server instance is created, terraform will output the server’s name and IP.  You can retrieve this output at any time after creating the instances by running 
  
   $ terraform output
  
If you no longer need the stack,  you can clean up the deployment by using
  $ terraform destroy -auto-approve

## Roadmap

Please email me for features and additions you would like to see.  

or

## Get Involved

* Submit a proposed code update through a pull request to the `devel` branch.
* Talk to us before making larger changes
  to avoid duplicate efforts. This not only helps everyone
  know what is going on, but it also helps save time and effort if we decide
  some changes are needed.

## Author

Terraform-with-ansible was created by [Bobby Wen] (https://github.com/bobby1) as a primer to Terraform and ansible.

## License

MIT License

https://github.com/bobby1/terraform-with-ansible/blob/main/LICENSE
