resource "google_service_account" "workbanch_instance_sa" {
  account_id   = var.instance_service_account_name
  display_name = var.instance_service_account_name
  description  = var.instance_service_account_description
  project      = var.project_id
}

resource "google_project_iam_member" "wbinst_sa_iam_1" {
  member     = "serviceAccount:${var.instance_service_account_name}@${var.project_id}.iam.gserviceaccount.com"
  project    = var.project_id
  role       = "roles/storage.objectCreator"
  depends_on = [google_service_account.workbanch_instance_sa, ]
}
resource "google_project_iam_member" "wbinst_sa_iam_2" {
  member     = "serviceAccount:${var.instance_service_account_name}@${var.project_id}.iam.gserviceaccount.com"
  project    = var.project_id
  role       = "roles/storage.objectViewer"
  depends_on = [google_service_account.workbanch_instance_sa, ]
}
resource "google_project_iam_member" "wbinst_sa_iam_3" {
  member     = "serviceAccount:${var.instance_service_account_name}@${var.project_id}.iam.gserviceaccount.com"
  project    = var.project_id
  role       = "roles/aiplatform.serviceAgent"
  depends_on = [google_service_account.workbanch_instance_sa, ]
}
#"roles/discoveryengine.viewer"
resource "google_project_iam_member" "wbinst_sa_iam_4" {
  member     = "serviceAccount:${var.instance_service_account_name}@${var.project_id}.iam.gserviceaccount.com"
  project    = var.project_id
  role       = "roles/discoveryengine.viewer"
  depends_on = [google_service_account.workbanch_instance_sa, ]
}

