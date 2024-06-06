terraform {
  required_providers {
    google = {
      version = "~> 5.25.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file_path)

  project = var.project_id
  region  = var.region
  zone    = var.main_zone
}

provider "google-beta" {
  credentials = file(var.credentials_file_path)

  project = var.project_id
  region  = var.region
  zone    = var.main_zone
}
/*

Build Core Network Services:  

    1. VPC Network
    2. Subnet
    3. Cloud Router
    4. Cloud Router NAT
    
*/
module "google_core" {
  source = "./core"

  project_id = var.project_id
  region     = var.region
  network_name    = var.network_name
  subnet_name     = var.subnet_name
  router_name     = var.router_name
  router_nat_name = var.router_nat_name
  gcp_service_list = var.gcp_service_list
  source_range = var.source_range
}

module "google_vertex" {
  source = "./vertex"

  project_id              = var.project_id
  region                  = var.region
  # output variable from google networks trigger implcit dependency on network and subnetwork being built
  #network_name           = module.google_core.vpc_name
  network_name            = module.google_core.out_vpc_id
  subnet_name             = module.google_core.out_subnet_id
  instance_machine_type   = var.instance_machine_type
  main_zone               = var.main_zone
  workbench_instance_name = var.workbench_instance_name
  instance_service_account_email = module.google_core.out_sa_email
}

module "google_localdev" {
  source = "./localdev"

  project_id = var.project_id
  network_name    = var.network_name
  gcp_localdev_list = var.gcp_localdev_list
  source_ranges_localdev = var.source_ranges_localdev
  localdev_service_account_description = var.localdev_service_account_description
  localdev_service_account_name = var.localdev_service_account_name
  depends_on = [module.google_core]
}

