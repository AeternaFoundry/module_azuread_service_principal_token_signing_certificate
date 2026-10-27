variable "service_principal_token_signing_certificates" {
  description = <<EOT
Map of service_principal_token_signing_certificates, attributes below
Required:
    - service_principal_id
Optional:
    - display_name
    - end_date
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
EOT

  type = map(object({
    service_principal_id = string
    display_name         = optional(string)
    end_date             = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_principal_token_signing_certificates : (
        can(regex("^(/[^/]+/[^/]+)+$", v.service_principal_id))
      )
    ])
    error_message = "must be a valid Azure resource ID"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principal_token_signing_certificates : (
        v.display_name == null || (can(regex("^CN=.+$|^$", v.display_name)))
      )
    ])
    error_message = "must match ^CN=.+$|^$"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

