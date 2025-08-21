resource "oci_core_subnet" "subnet-dev" {
  #Required
  cidr_block     = var.cidr_block
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id

  #Optional
  display_name    = var.display_name
  dns_label       = var.dns_label
}
