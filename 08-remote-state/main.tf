terraform {
  backend "s3" {
    bucket = "d77-terraform"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}