variable "compartment_id" {
  description = "OCID of the compartment"
  type        = string
}

variable "vcn_display_name" {
  description = "Name of the VCN"
  type        = string
}

variable "vcn_cidr_block" {
  description = "CIDR block of the VCN"
  type        = string
}

variable "vcn_dns_label" {
  description = "DNS label of the VCN"
  type        = string
}
