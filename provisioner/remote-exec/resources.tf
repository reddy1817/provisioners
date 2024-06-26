data "aws_ami" "centos" {
  most_recent = true
  owners      = ["125523088429"]

  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 - 2211"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.centos.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0268f2734e1a40137"]
  key_name               = "RGAS"

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y epel-release",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "centos"
      private_key = file("./RGAS.pem")
    }
  }
  tags = {
    Name = "robo"
  }
}