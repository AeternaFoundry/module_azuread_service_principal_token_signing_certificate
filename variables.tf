variable "service_principal_token_signing_certificates" {
  description = <<EOT
Map of service_principal_token_signing_certificates, attributes below
Required:
    - service_principal_id
Optional:
    - display_name
    - end_date
EOT

  type = map(object({
    service_principal_id = string
    display_name         = optional(string)
    end_date             = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_principal_token_signing_certificates : (
        v.display_name == null || (can(regex("^CN=.+$|^$", v.display_name)))
      )
    ])
    error_message = ""
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

