output "out_localdev_service" {
  description = "Enabled API Service(s) for Local Dev"
  # References child Module output Variable
  value       = module.google_localdev_apis.out_localdev_service
}

output "out_localdev_sa_name" {
  description = "Name of Notebook Instance Service Account for Local Dev"
  # References child Module output Variable
  value       = module.google_localdev_iam.out_localdev_sa_name
}
output "out_localdev_sa_email" {
  description = "Name of Notebook Instance Service Account Email for Local Dev"
  # References child Module output Variable
  value       = module.google_localdev_iam.out_localdev_sa_email
}