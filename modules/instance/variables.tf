variable "compartment_id" {
  description = "OCID of the compartment where the instance will be created"
  type        = string
}

variable "k3s_masters" {
  description = "Configuration of the K3s masters instances"
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
  description = "Configuration of the K3s workers instances"
  type = object({
    instance_number                  = number
    instance_shape                   = string
    instance_image_id                = string
    instance_boot_volume_size_in_gbs = number
    instance_ocpu                    = number
    instance_ram                     = number
  })
}
