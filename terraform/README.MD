# TERRAFORM CONFIGURATION

## Prerequisite
* Install terraform - https://developer.hashicorp.com/terraform/downloads
* Install AWS CLI - https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
* Configure your AWS Credentials and  the environment variables - https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html

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

###

Running the Terraform configuration using following commands

To initializes your Terraform working directory.
```
terraform init
```
To Create an execution plan based on your Terraform configuration
```
terraform plan
```
To executes the changes specified in the Terraform plan
```
terraform apply
```
To destroy the resources created by terraform
```
terraform destroy
```
