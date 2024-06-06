project_id = "nlp-dev-6aae"
#credentials_file_path = "../tf-sa-key/nlp-dev-6aae-fae5df70086f.json" // terraform
credentials_file_path       = "../tf-sa-key/nlp-dev-6aae-d3b64548129a.json" // new-terraform authentication using tf service account key
region                      = "europe-west2"
main_zone                   = "europe-west2-a"
network_name                = "nlp-dev-6aae-network"
subnet_name                 = "nlp-dev-6aae-subnet"
router_name                 = "nlp-dev-6aae-router" 
router_nat_name             = "nlp-dev-6aae-nat" 
workbench_instance_name     = "lab-rat-101"
instance_machine_type       = "e2-standard-4"
## APIs to Enable for GenAI
gcp_service_list = [ 
    "dns.googleapis.com",
    "networkconnectivity.googleapis.com",
    "notebooks.googleapis.com",
    "aiplatform.googleapis.com",
    "visionai.googleapis.com",
    "generativelanguage.googleapis.com",
]

gcp_localdev_list = [ 
    "iap.googleapis.com",
]
# IP Address Ranges for VPC Network
source_range               = "10.0.0.0/24"
source_ranges_localdev      = ["10.0.0.0/24"]

