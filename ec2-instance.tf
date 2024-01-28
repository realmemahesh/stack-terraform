resource "aws_instance" "apache-server" {
  ami           = "ami-014b33341e3a1178e"
  instance_type = "t2.micro"
  user_data     = file("${path.module}/app.sh")
  tags = {
    "name" = "ec2-demo"
  }
}