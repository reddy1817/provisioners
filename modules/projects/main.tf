module "ec2_instance" {
  source        = "../ec2-instance-module"
  region        = var.region
  ami           = var.ami
  instance_type = var.instance_type
  instance_name = var.instance_name
}

output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "instance_public_ip" {
  value = module.ec2_instance.instance_public_ip

}
