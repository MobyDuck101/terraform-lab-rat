output "out_localdev_service" {
  description = "Enabled API Service(s) for Local Dev"
  # References child Module output Variable
  value       = google_project_service.enabled-apis["iap.googleapis.com"].id
}