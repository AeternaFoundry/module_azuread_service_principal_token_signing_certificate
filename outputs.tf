output "service_principal_token_signing_certificates_id" {
  description = "Map of id values across all service_principal_token_signing_certificates, keyed the same as var.service_principal_token_signing_certificates"
  value       = { for k, v in azuread_service_principal_token_signing_certificate.service_principal_token_signing_certificates : k => v.id }
}
output "service_principal_token_signing_certificates_display_name" {
  description = "Map of display_name values across all service_principal_token_signing_certificates, keyed the same as var.service_principal_token_signing_certificates"
  value       = { for k, v in azuread_service_principal_token_signing_certificate.service_principal_token_signing_certificates : k => v.display_name }
}
output "service_principal_token_signing_certificates_end_date" {
  description = "Map of end_date values across all service_principal_token_signing_certificates, keyed the same as var.service_principal_token_signing_certificates"
  value       = { for k, v in azuread_service_principal_token_signing_certificate.service_principal_token_signing_certificates : k => v.end_date }
}
output "service_principal_token_signing_certificates_key_id" {
  description = "Map of key_id values across all service_principal_token_signing_certificates, keyed the same as var.service_principal_token_signing_certificates"
  value       = { for k, v in azuread_service_principal_token_signing_certificate.service_principal_token_signing_certificates : k => v.key_id }
}
output "service_principal_token_signing_certificates_service_principal_id" {
  description = "Map of service_principal_id values across all service_principal_token_signing_certificates, keyed the same as var.service_principal_token_signing_certificates"
  value       = { for k, v in azuread_service_principal_token_signing_certificate.service_principal_token_signing_certificates : k => v.service_principal_id }
}
output "service_principal_token_signing_certificates_start_date" {
  description = "Map of start_date values across all service_principal_token_signing_certificates, keyed the same as var.service_principal_token_signing_certificates"
  value       = { for k, v in azuread_service_principal_token_signing_certificate.service_principal_token_signing_certificates : k => v.start_date }
}
output "service_principal_token_signing_certificates_thumbprint" {
  description = "Map of thumbprint values across all service_principal_token_signing_certificates, keyed the same as var.service_principal_token_signing_certificates"
  value       = { for k, v in azuread_service_principal_token_signing_certificate.service_principal_token_signing_certificates : k => v.thumbprint }
}
output "service_principal_token_signing_certificates_value" {
  description = "Map of value values across all service_principal_token_signing_certificates, keyed the same as var.service_principal_token_signing_certificates"
  value       = { for k, v in azuread_service_principal_token_signing_certificate.service_principal_token_signing_certificates : k => v.value }
  sensitive   = true
}

