/*
GCloud Command 
gcloud compute routers create cloud-router-europe-west2-nlp-dev \
    --project=nlp-dev-6aae \
    --network=nlp-dev-6aae-network \
    --region=europe-west2
*/
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router 
resource "google_compute_router" "cloud_router_nlp_dev_6aae" {
  name                          = var.router_name
  network                       = var.network_name
  project                       = var.project_id
  region                        = var.region

#  depends_on = [core.google_compute_subnetwork.vpc_network_subnet]
}
/*
GCloud Command
gcloud compute routers nats create cloud-nat-europe-west2-nlp-dev \
    --router=cloud-router-europe-west2-nlp-dev \ 
    --auto-allocate-nat-external-ips \ 
    --nat-all-subnet-ip-ranges \
    --region=europe-west2
*/
# 

resource "google_compute_router_nat" "cloud_nat_nlp_dev_6aae" {
  name                               = var.router_nat_name
  router                             = var.router_name
  region                             = var.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  project                            = var.project_id

  depends_on = [google_compute_router.cloud_router_nlp_dev_6aae]
}



