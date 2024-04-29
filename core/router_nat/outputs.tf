output "out_router_vpc_name" {
  description = "Name of project VPC used by router"
  # References child Module output Variable
  value       = google_compute_router.cloud_router_nlp_dev_6aae.network
}