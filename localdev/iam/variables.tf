variable "project_id" {
  type        = string
  description = "The project ID to host the network in"
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