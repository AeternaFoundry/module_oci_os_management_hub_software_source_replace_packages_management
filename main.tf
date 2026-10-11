resource "oci_os_management_hub_software_source_replace_packages_management" "os_management_hub_software_source_replace_packages_managements" {
  for_each = var.os_management_hub_software_source_replace_packages_managements

  packages           = each.value.packages
  software_source_id = each.value.software_source_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

