resource "aws_default_security_group" "default" {

  ingress {
    protocol  = "tcp"
    self      = true
    from_port = 22
    to_port   = 22
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_default_security_group" "default-2" {

  ingress {
    protocol  = "tcp"
    self      = true
    from_port = 40
    to_port   = 80
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}