data "aws_ami" "ami-id" {
  most_recent      = true
  owners           = ["amazon"]

 /* filter {
    name = "image-id"
    values = ["ami-0353faff0d421c70e"]
  }*/

  filter {
    name   = "name"
    values = ["al2023-ami-2023.3.20240122.0-kernel-6.1-x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}