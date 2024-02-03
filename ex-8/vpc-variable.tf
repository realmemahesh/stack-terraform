variable "vpc_name" {
  default = "terra-vpc"
}
variable "azs" {
  type    = list(string)
  default = ["us-west-1a", "us-west-1b"]
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.1.0.0/24", "10.2.0.0/24"]
}

variable "private_subnets" {
  type    = list(string)
  default = ["10.3.0.0/24", "10.4.0.0/24"]
}

variable "database_subnets" {
  type    = list(string)
  default = ["10.10.0.0/24", "10.11.0.0/24"]
}

variable "db_subnet_name" {
  default = "db_subnet"
}