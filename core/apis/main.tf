
# This is required for other apis to be anabled by terraform
resource "google_project_service" "service-usage-api" {
  project                    = var.project_id
  service                    = "serviceusage.googleapis.com"
  disable_dependent_services = false
  disable_on_destroy         = false
}

resource "google_project_service" "enabled-apis" {
  for_each                   = toset(var.gcp_service_list)
  project                    = var.project_id
  service                    = each.key
  disable_dependent_services = false
  disable_on_destroy         = true
  depends_on = [ google_project_service.service-usage-api ]
}