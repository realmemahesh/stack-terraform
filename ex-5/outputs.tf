#Ec2 Public Ip
/*output "ec2-public-ip" {
  value = aws_instance.ec2.public_ip
}

#Ec2 Public DNS
output "ec2-public-dns" {
  value = aws_instance.ec2.public_dns
}*/

#For loop with list
output "public_dns_list" {
  value = [for instance in aws_instance.ec2: instance.public_dns ]
}

#For loop with map_1
output "public_dns_map_1" {
  value = {for instance in aws_instance.ec2: instance.id => instance.public_dns}
}

#For loop with map_2
output "public_ip_map_2" {
  value = {for c, instance in aws_instance.ec2: c => instance.public_ip}
}

#For loop with legacy splat operator
output "public_ip_splat" {
  value = aws_instance.ec2.*.public_ip
}
 #For loop with legacy splat operator
 output "public_ip_splat_2" {
   value = aws_instance.ec2[*].public_ip
 }