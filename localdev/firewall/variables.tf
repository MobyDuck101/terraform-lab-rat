variable "project_id" {
  type        = string
  description = "The project ID to host the network in"
}

variable "network_name" {
  type        = string
  description = "Name of VPC Network"
}

variable "source_ranges_localdev" {
  type        = list(string)
  description = "Source ranges to which the firewall will apply. Expressed in CIDR format."
}


