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
  vpc_security_group_ids = [ "sg-0268f2734e1a40137" ]
  key_name               = "RGAS"

  provisioner "file" {
    source = "nginx-install.sh"
    destination = "/tmp/nginx-install.sh"
    connection {
      type = "ssh"
      host = self.public_ip
      user = centos
      private_key = file("./RGAS.pem")
    }
  }

  provisioner "remote-exec" {
    inline = [ 
      "sudo chmod a+x /tmp/nginx-install.sh",
      "sudo sh /tmp/nginx-install.sh"
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