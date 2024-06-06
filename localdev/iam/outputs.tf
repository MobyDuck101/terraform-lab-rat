output "out_localdev_sa_name" {
  description = "Name of Notebook Instance Service Account for Local Dev"
  # References child Module output Variable
  value       = google_service_account.workbanch_localdev_sa.name
}
output "out_localdev_sa_email" {
  description = "Name of Notebook Instance Service Account Email for Local Dev"
  # References child Module output Variable
  value       = google_service_account.workbanch_localdev_sa.email
}