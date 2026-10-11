variable "os_management_hub_software_source_replace_packages_managements" {
  description = <<EOT
Map of os_management_hub_software_source_replace_packages_managements, attributes below
Required:
    - packages
    - software_source_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    packages           = list(string)
    software_source_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

