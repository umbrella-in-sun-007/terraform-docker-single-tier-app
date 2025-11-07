# main.tf
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

# Step 1: Build the custom Docker image
resource "docker_image" "app_image" {
  name         = var.image_name
  build {
    context    = "${path.module}/app"
  }
}

# Step 2: Create and run the container
resource "docker_container" "app_container" {
  name  = var.app_name
  image = docker_image.app_image.name

  ports {
    internal = 80
    external = var.container_port
  }
}
