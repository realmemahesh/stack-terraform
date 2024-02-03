module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.5.1"

  name            = "${local.owners}-${local.env}-${var.vpc_name}"
  cidr            = "10.0.0.0/16"
  azs             = var.azs
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  create_database_subnet_group       = true
  database_subnet_group_name         = var.db_subnet_name
  database_subnets                   = var.database_subnets
  create_database_subnet_route_table = true

  enable_nat_gateway   = true
  enable_vpn_gateway   = true
  enable_dns_hostnames = true
  single_nat_gateway   = true


  tags = local.common_tags
}



