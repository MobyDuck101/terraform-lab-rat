variable "gcp_service_list" {
  type        = list(string)
  description = "The list of apis necessary for the project"
  default     = []
}

variable "project_id" {
  type        = string
  description = "The project ID to host the network in"
}