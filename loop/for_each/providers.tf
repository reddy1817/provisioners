terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#configure the aws Provider
provider "aws" {
  region  = "eu-west-2"
  profile = "dev"
}