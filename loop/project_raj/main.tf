module "ec2_instance" {
  source        = "../../modules/ec2-instance-module"
  region        = var.region
  ami           = var.ami
  instance_type = var.instance_type
  instance_name = var.instance_name
}