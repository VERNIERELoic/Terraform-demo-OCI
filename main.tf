terraform {
  backend "s3" {
    namespace         = "dev"
    bucket            = "bucket-terraform"
    region            = "eu-marseille-1"
    compartment_ocid  = var.compartment_id
    tenancy_ocid      = var.tenancy_ocid
    user_ocid         = var.user_ocid
    fingerprint       = var.fingerprint
    private_key_path  = "./keys/private_key_loicverniere.pem"
    key               = "dev/terraform.tfstate"
  }
}

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

module "instance" {
  source         = "./modules/instance"
  compartment_id = var.compartment_id
  subnet_id      = module.subnet.subnet_id
  k3s_masters    = var.k3s_masters
  k3s_workers    = var.k3s_workers
}

