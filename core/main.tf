module "google_networks" {
  ## VPC & Subnet
  source          = "./network"
  subnet_name     = var.subnet_name
  project_id      = var.project_id
  region          = var.region
  network_name    = var.network_name
}

module "google_router_nat" {
  ## Router & NAT
  ## Facilitates Private (Secure) Access (No External ip)
  source          = "./router_nat"
  project_id      = var.project_id
  region          = var.region
  # output variable from google networks trigger implcit dependency on network and subnetwork being built
  network_name    = module.google_networks.out_vpc_name
  subnet_name     = module.google_networks.out_subnet_name
  router_name     = var.router_name
  router_nat_name = var.router_nat_name
}

module "google_workbench_iam" {
   source         = "./iam"
   project_id     = var.project_id

}

