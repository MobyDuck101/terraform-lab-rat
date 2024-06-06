variable "gcp_localdev_list" {
  type        = list(string)
  description = "The list of apis necessary for local development"
  default     = []
}

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

variable "localdev_service_account_name" {
  description = "The name of the custom service account used for Workbench Local Development & Remote Access. This parameter is limited to a maximum of 28 characters."
  type        = string
}

variable "localdev_service_account_description" {
  description = "A description of the custom service account used for the Workbench Local Development & Remote Access. Implementation of Least privilege via IAM Role Allocation"
  type        = string
  default     = "Service Account for Workbench Local Development & Remote Access. Roles allocated according to Least Privilege"
}