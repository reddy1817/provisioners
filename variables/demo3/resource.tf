resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type[0]
  vpc_security_group_ids = ["sg-059c3a7e108a64f3a"]
  key_name               = "terraform"
  root_block_device {
    volume_size = var.volume_size
  }

  tags = {
    Name = "robo"
  }
}