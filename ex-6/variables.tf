variable "instance_type_list" {
  type    = list(string)
  default = ["t2.micro", "t2.small"]
}
variable "instance_type_map" {
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "qa"  = "t2.small"
  }
}
variable "env" {
  default = "dev"
}