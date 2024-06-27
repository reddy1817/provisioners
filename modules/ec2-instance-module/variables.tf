variable "region" {
  description = "The AWS region to deploy the instance in"
  type        = string
}

variable "ami" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to deploy"
  type        = string
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
}
