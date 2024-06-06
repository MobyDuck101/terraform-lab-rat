# Firewall Definition permitting IAP Ingress via SSH protocol 
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall 
resource "google_compute_firewall" "default" {
  name    = "workbench-localdev-firewall"

  network = var.network_name

  source_ranges = var.source_ranges_localdev

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}