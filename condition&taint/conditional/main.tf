resource "aws_instance" "web" {
  count                  = var.env == "dev" ? 1 : 0
  ami                    = var.ami
  instance_type          = "t3.micro"
  root_block_device {
    volume_size = 8
  }
  tags = {
    Name = "dev_instance"
  }
}

resource "aws_instance" "robo" {
  count                  = var.env == "prod" ? 1 : 0
  ami                    = var.ami
  instance_type          = "t3.small"
  root_block_device {
    volume_size = 8
  }
  tags = {
    Name = "prod_instance"
  }
}