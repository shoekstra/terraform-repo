variable "hello" {
  type        = string
  description = "Hello variable"
}

resource "null_resource" "hello" {
  count = var.hello == "world" ? 1 : 0

  provisioner "local-exec" {
    command = "echo Hello, ${var.hello}!"
  }
}
