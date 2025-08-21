compartment_id = "ocid1.tenancy.oc1..aaaaaaaak5a6k3z4cbf7ud4ur5f3gixbxhqskm5t7vrsclzawnre6unuqcia"

vcn_display_name = "dev-vcn"
vcn_cidr_block   = "10.0.0.0/24"
vcn_dns_label    = "devvcn"

subnet_cidr_block   = "10.0.0.0/24"
subnet_display_name = "dev-subnet"
subnet_dns_label    = "dev"

k3s_masters = {
  instance_number                  = 1
  instance_shape                   = "VM.Standard.A1.Flex"
  instance_image_id                = "ocid1.image.oc1.eu-marseille-1.aaaaaaaazqrkyscu7peeuylwrkr5aro5s23tmu6z4arfmpfqpe55hjshsoja"
  instance_boot_volume_size_in_gbs = 47
  instance_ocpu                    = 2
  instance_ram                     = 12
}
k3s_workers = {
  instance_number                  = 2
  instance_shape                   = "VM.Standard.A1.Flex"
  instance_image_id                = "ocid1.image.oc1.eu-marseille-1.aaaaaaaazqrkyscu7peeuylwrkr5aro5s23tmu6z4arfmpfqpe55hjshsoja"
  instance_boot_volume_size_in_gbs = 47
  instance_ocpu                    = 1
  instance_ram                     = 6
}


