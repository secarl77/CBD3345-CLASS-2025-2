terraform {
  backend "remote" {
    organization = "TU_ORGANIZACION_TFCLOUD"

    workspaces {
      name = "TU_WORKSPACE"
    }
  }
}

resource "null_resource" "example" {
  triggers = {
    example = "Hola desde GitHub Actions"
  }
}

