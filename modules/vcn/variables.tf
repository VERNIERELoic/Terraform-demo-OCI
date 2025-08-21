variable "compartment_id" {
  description = "OCID of the compartment"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block of the VCN"
  type        = string
}

variable "display_name" {
  description = "Name of the VCN"
  type        = string
}

variable "dns_label" {
  description = "DNS label of the VCN"
  type        = string
}
