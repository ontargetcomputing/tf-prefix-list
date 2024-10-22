locals {
  context = "fsx-whitelist"
}

module "fsx_whitelist_prefix_list" {
  source                      = "../../modules/prefix_list"
  env                         = var.env
  context                     = local.context
  address_family              = "IPv4"
  cidr_blocks                 = var.cidr_blocks
  management_account_id       = var.management_account_id
  principle_ou_arn_suffixes   = var.principle_ou_arn_suffixes
}
