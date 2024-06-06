# Firewall Definition permitting IAP Ingress via SSH protocol 
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall 
resource "google_compute_firewall" "ssh-iap" {
  name    = "workbench-localdev-firewall-ssh-iap"

  network = var.network_name

  source_ranges = var.source_ranges_localdev

  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

resource "google_compute_firewall" "ssh" {
  name    = "workbench-localdev-firewall-ssh"

  network = var.network_name

  source_ranges = [
    "0.0.0.0/0"
  ]

  direction = "INGRESS"

  priority = 999

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

/*
Add This

{
  "allowed": [
    {
      "IPProtocol": "tcp",
      "ports": [
        "22"
      ]
    }
  ],
  "creationTimestamp": "2024-06-06T07:46:01.137-07:00",
  "description": "",
  "direction": "INGRESS",
  "disabled": false,
  "enableLogging": false,
  "id": "5737562512208721222",
  "kind": "compute#firewall",
  "logConfig": {
    "enable": false
  },
  "name": "mynet-allow-ssh",
  "network": "projects/nlp-dev-6aae/global/networks/nlp-dev-6aae-network",
  "priority": 999,
  "selfLink": "projects/nlp-dev-6aae/global/firewalls/mynet-allow-ssh",
  "sourceRanges": [
    "0.0.0.0/0"
  ]
}
*/