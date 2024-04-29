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