resource "aws_instance" "web" {
  ami                    = "ami-01f10c2d6bce70d90"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-059c3a7e108a64f3a"]
  key_name               = "terraform"
  for_each               = toset(var.Name)
  root_block_device {
    volume_size = 8
  }

  tags = {
    Name = each.value
  }
}