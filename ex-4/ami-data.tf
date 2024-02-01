data "aws_ami" "ami-id" {
  executable_users = ["self"]
  most_recent      = true
  owners           = ["amazon"] #owner of ami

  filter {
   name   = "name"
   values = ["*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}