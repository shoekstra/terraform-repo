variable "name" {
  type        = string
  description = "name variable"
}

resource "null_resource" "name" {
  provisioner "local-exec" {
    command = "echo Hello, ${var.name}!"
  }
}

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0.0"
    }
  }
}
