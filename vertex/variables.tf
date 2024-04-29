variable "project_id" {
  type        = string
  description = "The ID of the project to create resources in"
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

variable "instance_service_account_email" {
  type        = string
  description = "Email of Service Account used by Instance Notebook"
}
