locals {
  owners = var.bu
  env    = var.env
  name   = "${local.owners}-${local.env}"
  common_tags = {
    owners = local.owners
    env    = local.env
  }
}