terraform {
  backend "s3" {}
}

resource "null_resource" "test" {}

output "test" {
  value = var.test #coming from main.tfvars and state info is coming from state file
}