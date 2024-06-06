/*
GCloud Command
gcloud compute networks create nlp-dev-6aae-network \
    --project=nlp-dev-6aae \
    --subnet-mode=custom
*/
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network 
resource "google_compute_network" "vpc_network" {
  name                            = var.network_name
  auto_create_subnetworks         = "false"
  enable_ula_internal_ipv6        = "false"
  routing_mode                    = "REGIONAL"
  project                         = var.project_id
}

/*
Gcloud Command
gcloud compute networks subnets create nlp-dev-6aae-subnet \
    --project=nlp-dev-6aae \
    --network=nlp-dev-6aae-network \
    --region=europe-west2 \
    --range=10.0.0.0/24 \
    --enable-private-ip-google-access
*/
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork 
resource "google_compute_subnetwork" "vpc_network_subnet" {
  ip_cidr_range              = var.source_range
  name                       = var.subnet_name
  network                    = var.network_name
  private_ip_google_access   = "true"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = var.project_id
  #purpose                    = "PRIVATE"
  region                     = var.region

  stack_type = "IPV4_ONLY"

  depends_on = [google_compute_network.vpc_network]

}