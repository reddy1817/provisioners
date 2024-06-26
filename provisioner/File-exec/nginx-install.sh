#!/bin/bash
sudo yum update -y
sudo yum install -y epel-release
sudo yum -y install nginx
sudo systemctl start nginx