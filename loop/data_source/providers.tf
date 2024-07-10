terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#configure the AWS provider
provider "aws" {
  region  = var.region
  profile = "dev"

}
