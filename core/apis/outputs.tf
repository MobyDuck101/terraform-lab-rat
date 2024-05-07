output "out_service" {
  description = "Enabled API Service"
  # References child Module output Variable
  value       = google_project_service.enabled-apis["notebooks.googleapis.com"].id
}