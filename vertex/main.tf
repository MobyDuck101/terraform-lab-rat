module "google_workbench" {
  ## Router & NAT
  ## Facilitates Private (Secure) Access (No External ip)
  source                         = "./notebook"
  project_id                     = var.project_id
  region                         = var.region
  # output variable from google networks trigger implcit dependency on network and subnetwork being built
  network_name                   = var.network_name
  subnet_name                    = var.subnet_name
  instance_machine_type          = var.instance_machine_type
  main_zone                      = var.main_zone
  workbench_instance_name        = var.workbench_instance_name
  instance_service_account_email = var.instance_service_account_email

}