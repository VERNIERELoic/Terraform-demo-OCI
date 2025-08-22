variable "compartment_id" {
  description = "OCID of the compartment"
  type        = string
}

variable "vcn_cidr_block" {
  description = "CIDR block for the VCN"
  type        = string
}

variable "vcn_display_name" {
  description = "Display name for the VCN"
  type        = string
}

variable "vcn_dns_label" {
  description = "DNS label for the VCN"
  type        = string
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "subnet_display_name" {
  description = "Display name for the subnet"
  type        = string
}

variable "subnet_dns_label" {
  description = "DNS label for the subnet"
  type        = string
}



variable "k3s_masters" {
  description = "Configuration des instances master K3s"
  type = object({
    instance_number                  = number
    instance_shape                   = string
    instance_image_id                = string
    instance_boot_volume_size_in_gbs = number
    instance_ocpu                    = number
    instance_ram                     = number
  })
}

variable "k3s_workers" {
  description = "Configuration des instances worker K3s"
  type = object({
    instance_number                  = number
    instance_shape                   = string
    instance_image_id                = string
    instance_boot_volume_size_in_gbs = number
    instance_ocpu                    = number
    instance_ram                     = number
  })
}