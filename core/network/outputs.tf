output "out_vpc_name" {
  description = "Name of project VPC"
  # References child Module output Variable
  value       = google_compute_network.vpc_network.name
}
output "out_subnet_name" {
  description = "Name of project VPC Subnet"
  # References child Module output Variable
  value       = google_compute_subnetwork.vpc_network_subnet.name
}

output "out_vpc_id" {
  description = "Name of project VPC"
  # References child Module output Variable
  value       = google_compute_network.vpc_network.id
}
output "out_subnet_id" {
  description = "Name of project VPC Subnet"
  # References child Module output Variable
  value       = google_compute_subnetwork.vpc_network_subnet.id
}