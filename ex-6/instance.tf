resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.ami-id.id
  instance_type          = var.instance_type_map[var.env]
  vpc_security_group_ids = [aws_default_security_group.default.id, aws_default_security_group.default-2.id]
  for_each               = toset(data.aws_availability_zones.az.names)
  availability_zone      = each.key
  tags = {
    name = "zone is ${each.value}"
  }
}