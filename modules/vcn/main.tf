resource "oci_core_vcn" "dev-vcn" {
  #Required
  compartment_id = var.compartment_id
  cidr_block     = var.cidr_block
  display_name   = var.display_name
  dns_label      = var.dns_label
}
