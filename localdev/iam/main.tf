# Permissions required fro Local Development
# Uses purpose built service account
# https://cloud.google.com/iap/docs/using-tcp-forwarding#grant-permission 
resource "google_service_account" "workbanch_localdev_sa" {
  account_id   = var.localdev_service_account_name
  display_name = var.localdev_service_account_name
  description  = var.localdev_service_account_description
  project      = var.project_id
}
# This grants access to ALL the VMs in the project
resource "google_project_iam_member" "wblocaldev_sa_iam_1" {
  member     = "serviceAccount:${var.localdev_service_account_name}@${var.project_id}.iam.gserviceaccount.com"
  project    = var.project_id
  role       = "roles/iap.tunnelResourceAccessor"
  depends_on = [google_service_account.workbanch_localdev_sa, ]
}
resource "google_project_iam_member" "wblocaldev_sa_iam_2" {
  member     = "serviceAccount:${var.localdev_service_account_name}@${var.project_id}.iam.gserviceaccount.com"
  project    = var.project_id
  role       = "roles/compute.instanceAdmin.v1"
  depends_on = [google_service_account.workbanch_localdev_sa, ]
}
## And these. 
# roles/iam.serviceAccountUser
# roles/compute.osLoginExternalUser
# roles/compute.osLogin
# roles/compute.osAdminLogin

