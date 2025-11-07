# outputs.tf
output "app_container_name" {
  value = docker_container.app_container.name
}

output "app_url" {
  value = "http://localhost:${var.container_port}"
}
