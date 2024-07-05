variable "region" {
  description = "The AWS region to deploy the instance in"
  type        = string
}

variable "ami" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "env" {
  description = "Env to deploy"
  type        = string
}