output "out_vpc_name" {
  description = "ID of project VPC"
  # References child Module output Variable
  value       = module.google_networks.out_vpc_name
}

output "out_subnet_name" {
  description = "Name of project VPC Subnet"
  # References child Module output Variable
  value       = module.google_networks.out_subnet_name
}

output "out_vpc_id" {
  description = "ID of project VPC"
  # References child Module output Variable
  value       = module.google_networks.out_vpc_id
}

output "out_subnet_id" {
  description = "Name of project VPC Subnet"
  # References child Module output Variable
  value       = module.google_networks.out_subnet_id
}

output "out_router_vpc_name" {
  description = "Name of project VPC used by router"
  # References child Module output Variable
  value       = module.google_router_nat.out_router_vpc_name
}
output "out_sa_name" {
  description = "Name of Notebook IOnstance Service Account"
  # References child Module output Variable
  value       = module.google_workbench_iam.out_sa_name
}
output "out_sa_email" {
  description = "Name of Notebook IOnstance Service Account"
  # References child Module output Variable
  value       = module.google_workbench_iam.out_sa_email
}
output "out_service" {
  description = "Enabled API Service"
  # References child Module output Variable
  value       = module.google_apis.out_service
}