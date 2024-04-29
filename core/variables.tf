variable "project_id" {
  type        = string
  description = "The project ID to host the network in"
}

variable "region" {
  type        = string
  description = "The region to use"
}

variable "network_name" {
  type        = string
  description = "Name of VPC Network"
}

variable "subnet_name" {
  type        = string
  description = "Name of VPC Subnet"
}

variable "router_name" {
  type        = string
  description = "Name of Cloud Router"
}

variable "router_nat_name" {
  type        = string
  description = "Name of NAT"
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