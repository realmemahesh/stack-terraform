#Ec2 Public Ip
output "ec2-public-ip" {
  value = aws_instance.ec2.public_ip
}

#Ec2 Public DNS
output "ec2-public-dns" {
  value = aws_instance.ec2.public_dns
}