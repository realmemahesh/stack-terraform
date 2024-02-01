output "zones" {
  value = data.aws_availability_zones.az
}

output "public_ip" {
  value = toset([for instance in aws_instance.ec2: instance.public_ip])
}

output "public_ip_map" {
  value = {for z, instance in aws_instance.ec2: z => instance.public_ip}
}