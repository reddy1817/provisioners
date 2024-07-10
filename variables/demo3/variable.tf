variable "ami" {
  type        = string
  description = "first ami"
  default     = "ami-01f10c2d6bce70d90"
}

variable "instance_type" {
  type    = list(any)
  default = ["t2.micro", "t3.micro", "t3.medium"]
}

variable "region" {
  type = map(any)
  default = {
    "region1" = "eu-west-2"
    "region2" = "eu-west-1"
  }
}

variable "volume_size" {
  type    = number
  default = 8
}