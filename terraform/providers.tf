provider "aws" {
  region                  = var.tags["region"] != "" ? var.tags["region"] : local.tf_workspace_error
  profile                 = "default"
  shared_credentials_file = "~/.aws/credentials"

  default_tags {
    tags = var.tags
  }
}
