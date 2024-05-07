variable "project_id" {
  type        = string
  description = "The ID of the project to create resources in"
}

variable "region" {
  type        = string
  description = "The region to use"
}

variable "credentials_file_path" {
  type        = string
  description = "The credentials JSON file used to authenticate with GCP"
}

variable "router_name" {
  type        = string
  description = "Name of Cloud Router"
}

variable "router_nat_name" {
  type        = string
  description = "Name of NAT"
}

variable "network_name" {
  type        = string
  description = "Name of VPC Network"
}

variable "subnet_name" {
  type        = string
  description = "Name of VPC Subnet"
}

variable "main_zone" {
  type        = string
  description = "The zone to use as primary"
}

variable "workbench_instance_name" {
  type        = string
  description = "Name of User Managed Notebook Instance to be created"
}

variable "instance_machine_type" {
  type        = string
  description = "Machine Type of User Managed Notebook Instance to be created"
}

variable "instance_service_account_name" {
  description = "The name of the custom service account used for the Vertex Workbench Instance. This parameter is limited to a maximum of 28 characters."
  type        = string
  default     = "workbench-instance-sa"
}

variable "instance_service_account_description" {
  description = "A description of the custom service account used for the Vertex Workbench Instance. Implementation of Least privilege via IAM Role Allocation"
  type        = string
  default     = "Service Account for Vertex Workbench Instance. Roles allocated according to Least Privilege"
}

variable "gcp_service_list" {
  type        = list(string)
  description = "The list of apis necessary for the project"
  default     = []
}




