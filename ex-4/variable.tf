#Region
variable "region" {
  default = "us-west-1"
}

#EC2 type
variable "instance_type" {
  default = "t2.micro"
}

#Key-pair
variable "key_pair" {
  default = "terraform"
}