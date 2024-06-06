
# No separate service usage apis are required.

# Apis required to facilitate local development 
# Dependencies managed at paremt module level
resource "google_project_service" "enabled-apis" {
  for_each                   = toset(var.gcp_localdev_list)
  project                    = var.project_id
  service                    = each.key
  disable_dependent_services = false
  disable_on_destroy         = true
}