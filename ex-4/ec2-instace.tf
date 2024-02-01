resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.ami-id
  instance_type          = var.instance_type
  user_data              = file("${path.module}/app.sh")
  vpc_security_group_ids = [aws_default_security_group.sg-ssh.id, aws_default_security_group.sg-web.id]
  key_name               = var.key_pair
  tags = {
    "name" = "terraform-demo"
  }
}