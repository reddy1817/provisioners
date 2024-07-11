resource "aws_instance" "web" {
  ami                    = "ami-00f8e2c955f7ffa9b"
  instance_type          = "t2.micro"
  key_name               = "drhiju86"
  vpc_security_group_ids = ["sg-b844c2cd"]
  count = 2
  root_block_device {
    volume_size = 8
  }

  tags = {
    Name = "robo.${count.index}"
  }
}
