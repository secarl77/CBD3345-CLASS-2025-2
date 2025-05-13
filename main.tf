terraform {
  backend "remote" {
    organization = "sistendca"

    workspaces {
      name = "secarl-test"
    }
  }
}

resource "null_resource" "example" {
  triggers = {
    example = "Hola desde GitHub Actions"
  }
}

