# Terraform-gke-cluster

This repo is a branch of Terraform's companion repo to the [Provision a GKE Cluster tutorial](https://developer.hashicorp.com/terraform/tutorials/kubernetes/gke), containing Terraform configuration files to provision a GKE cluster on GCP. The code has been rewritten to use Google's best practices for Terraform and obfuscation of sensitive information.

## Demonstration principles
* This repo has modifications of the code utilizing Google's best practices using Terraform (https://cloud.google.com/docs/terraform/best-practices-for-terraform) from the original files and formats.

* This repo also demonstrates the use of base64 JSON encoding to obfuscate a variable or local file which may be sensitive, as an alternative to other secrets managers, i.e. Github secrets, Google secrets manager or AWS secrets manager.  This eliminates the need for setup for development environments or small projects, and reliance on an external service.  The demonstration takes advantage of Terraform's built-in file base64 decoder.  This approach can be used to encode other sensitive information such as passwords, user names or project and program variables.

## Pre-requisites

To use this code base, Google Cloud Platform CLI, Terraform, and optionally Kubernetes command-line tools are required to be installed locally on the server.

   * Google Cloud Platform project and console access (https://cloud.google.com/docs/get-started)
  
   * Terraform by HashiCorp (https://www.terraform.io/)

   * (optional) Kubernetes command-line tool, kubectl  (https://kubernetes.io/docs/tasks/tools/)
  
## How to use
1. Base64 encoding and decoding of sensitive information.  
     After you have created a Google account and established a project, create credentials for the project (https://console.cloud.google.com/apis/credentials).  Copy the JSON file to a local file on your computer.  Using the base64 command on a Linux shell command line, encode the file into a base64 hash.
        
        base64 /path/to/file > output.txt
          or to encode a variable only
        echo <variable value> | base64 exit
        
        

    * In the Terraform configuration, use base64decode(file(var.credentials_file)) function to decode the file for use in Terraform. 

2. To create the example environment using Terraform, in the SDLC directory for the environment to deploy, for example, dev

          terraform init


          terraform fmt


          terraform validate


          terraform plan  

       or 

              terraform plan -out <filename>  is recommended but not required

       
          terraform apply
  
        or
       
              terraform apply <filename>  if -out was used
  
 Once the server instance is created, terraform will output the server’s name and IP.  You can retrieve this output at any time after creating the instances by running 
  
          terraform output
  

3. Verifying the Kubernetes stack
  - After the GKE cluster is created, go to GCP's Kubernetes cluster console and start a terminal session.  
    - Initial Kubernetes command line tool (kubectl) to connect to cluster

          gcloud container clusters get-credentials \<cluster name\> --region=\<cluster region \>

       Fetching cluster endpoint and auth data.
       kubeconfig entry generated for gcp-demo-gke.

       NOTE: Accept the authorization pop-up to connect to the cluser

          kubectl get node 

      \<node name\>   Ready    \<none\>   24m   v1.27.8-gke.1067004

      \<node name\>   Ready    \<none\>   24m   v1.27.8-gke.1067004

      \<node name\>   Ready    \<none\>   24m   v1.27.8-gke.1067004

  * You are now ready to deploy your services on Google GKE.

Clean-up:

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

Terraform-gke-cluster is created by [Bobby Wen] (https://github.com/bobby1) as a primer for Terraform and Google Kubernetes Engine.

## License

MIT License

https://github.com/bobby1/terraform-gke-cluster/blob/main/LICENSE
