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

#list
variable "instance_type_list" {
  type = list(string)
  default = ["t2.micro", "t2.small"]
}

#map
variable "instance_type_map" {
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "qa"  = "t2.small"
  }
}