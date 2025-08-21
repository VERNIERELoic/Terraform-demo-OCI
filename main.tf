module "vcn" {
  source         = "./modules/vcn"
  compartment_id = var.compartment_id
  cidr_block     = var.vcn_cidr_block
  display_name   = var.vcn_display_name
  dns_label      = var.vcn_dns_label
}

module "subnet" {
  source         = "./modules/subnet"
  compartment_id = var.compartment_id
  cidr_block     = var.subnet_cidr_block
  display_name   = var.subnet_display_name
  dns_label      = var.subnet_dns_label
  vcn_id         = module.vcn.vcn_id
}
