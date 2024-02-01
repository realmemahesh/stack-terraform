resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.ami-id.id
  instance_type          = var.instance_type_list[0]
  user_data              = file("${path.module}/app.sh")
  vpc_security_group_ids = [
    aws_default_security_group.sg-ssh-1.id,
    aws_default_security_group.sg-web.id 
    ]
  key_name               = var.key_pair
  count                  = 2
  tags = {
    "name" = "terraform-demo-${count.index}"
  }
}