variable "account_dns_settings_internal_view_lookup" {
  description = <<EOT
Map of account_dns_settings_internal_view_lookup, attributes below
Optional:
    - account_id
    - filter
    - view_id
EOT

  type = map(object({
    account_id = optional(string)
    filter = optional(object({
      direction = optional(string)
      match     = optional(string)
      name = optional(object({
        contains   = optional(string)
        endswith   = optional(string)
        exact      = optional(string)
        startswith = optional(string)
      }))
      order     = optional(string)
      zone_id   = optional(string)
      zone_name = optional(string)
    }))
    view_id = optional(string)
  }))
}

