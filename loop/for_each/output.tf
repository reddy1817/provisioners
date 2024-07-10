output "public_ip" {
  value = {
    for instance in aws_instance.web :
    instance.tags.Name => instance.public_ip
  }

}