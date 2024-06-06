module "google_localdev_apis" {
  ## APIs Services to enable.
  source          = "./apis"
  project_id      = var.project_id
  gcp_localdev_list = var.gcp_localdev_list
}

module "google_localdev_networks" {
  ## VPC & Subnet
  source          = "./firewall"
  project_id      = var.project_id
  network_name    = var.network_name
  source_ranges_localdev = var.source_ranges_localdev
}

module "google_localdev_iam" {
   source           = "./iam"
   project_id       = var.project_id
   localdev_service_account_name   = var.localdev_service_account_name
   localdev_service_account_description  = var.localdev_service_account_description
}

