variable "gcp_localdev_list" {
  type        = list(string)
  description = "The list of apis necessary for local development"
  default     = []
}

variable "project_id" {
  type        = string
  description = "The project ID to host the network in"
}