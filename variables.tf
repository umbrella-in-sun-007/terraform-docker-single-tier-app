# variables.tf
variable "app_name" {
  description = "Name of the application container"
  type        = string
  default     = "terraform-nginx-app"
}

variable "image_name" {
  description = "Name of the Docker image"
  type        = string
  default     = "terraform-nginx-image"
}

variable "container_port" {
  description = "Port to expose the app"
  type        = number
  default     = 8080
}
