output "out_sa_name" {
  description = "Name of Notebook IOnstance Service Account"
  # References child Module output Variable
  value       = google_service_account.workbanch_instance_sa.name
}
output "out_sa_email" {
  description = "Name of Notebook IOnstance Service Account"
  # References child Module output Variable
  value       = google_service_account.workbanch_instance_sa.email
}