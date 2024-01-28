#Terraform block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.6"
    }
  }
}

#Provider block
provider "aws" {
  region = "us-west-1"
}