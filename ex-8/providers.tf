#Terraform block which consists of providers version details
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#Providers blockd which provides providers plugin details
provider "aws" {
  region = "us-west-1"
}

#The above details will be stored in terraform.hcl.lock file