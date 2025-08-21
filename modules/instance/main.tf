# Masters
resource "oci_core_instance" "masters" {
  for_each = { for i in range(var.k3s_masters.instance_number) : i => i }

  compartment_id      = var.compartment_id
  availability_domain = "Uocm:EU-FR-MARSEILLE-1-AD-1"
  shape               = var.k3s_masters.instance_shape
  display_name        = "master-${each.key + 1}"

  create_vnic_details {
    subnet_id        = var.subnet_id
    assign_public_ip = true
  }

  source_details {
    source_type             = "image"
    source_id               = var.k3s_masters.instance_image_id
    boot_volume_size_in_gbs = var.k3s_masters.instance_boot_volume_size_in_gbs
  }

  shape_config {
    ocpus         = var.k3s_masters.instance_ocpu
    memory_in_gbs = var.k3s_masters.instance_ram
  }
  preserve_boot_volume = false
}

# Workers
resource "oci_core_instance" "workers" {
  for_each = { for i in range(var.k3s_workers.instance_number) : i => i }

  compartment_id      = var.compartment_id
  availability_domain = "Uocm:EU-FR-MARSEILLE-1-AD-1"
  shape               = var.k3s_workers.instance_shape
  display_name        = "worker-${each.key + 1}"

  create_vnic_details {
    subnet_id        = var.subnet_id
    assign_public_ip = true
  }

  source_details {
    source_type             = "image"
    source_id               = var.k3s_masters.instance_image_id
    boot_volume_size_in_gbs = var.k3s_masters.instance_boot_volume_size_in_gbs
  }

  shape_config {
    ocpus         = var.k3s_workers.instance_ocpu
    memory_in_gbs = var.k3s_workers.instance_ram
  }

  preserve_boot_volume = false
}
