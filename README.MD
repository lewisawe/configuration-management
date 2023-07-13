# Configure a Linux machine with Ansible

* Prepare a machine with your favorite Linux (server) distribution.
* Create an ansible playbook

## Prerequisites 
* AWS Account. Plus install and configure AWS CLI 
  - AWS CLI Installation Guide  [ https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html]
  - Configure your AWS Credentials and  the environment variables [https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html]
* Install Terraform [https://developer.hashicorp.com/terraform/downloads]
* Install Ansible [https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html]

## Set up a server with terraform

### The terraform configuration is made of 6 parts

* Providers
  - Here we specify the provider which is AWS and the region we are using
* Versions
  - Specificies the version of terraform we are using
* VPC
  - We configure the Virtual Private network.
  - Will consist of 
      - CIDR Block
      - Subnet
      - Internet Gateway
      - Route tables
      - Access Control Lists
      - And Associate our route table to the subnet
* Security Group
  - Configure our security group to enable traffic in HTTP (port 80) HTTPS (port 443) and SSH (Port 22) and all egress traffic
* Main
  - The main configuration that provisions our server
  - The server utilizes ubuntu AMI ("ami-03f65b8614a860c29") and t2.micro instance type
  - Utilized a key pair that I already provisioned in the AWS CLI
  - Subnet ID and Security groups ID
* Outputs
  - If the terraform configuration successfully runs it will output public and private IPs

### Running the Terraform configuration 
Use the following steps and commands

Initializes your Terraform working directory.
```
terraform init
```
Create an execution plan based on your Terraform configuration
```
terraform plan
```
Execute the changes specified in the Terraform plan
```
terraform apply
```
Destroy the resources created by terraform
```
terraform destroy
```

## Create and Deploy an Ansible Playbook

