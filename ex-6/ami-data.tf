data "aws_ami" "ami-id" {
  most_recent = "true"
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_availability_zones" "az" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}
