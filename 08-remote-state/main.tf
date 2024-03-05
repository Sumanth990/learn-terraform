terraform {
  backend "s3" {
    bucket = "d77-terraform99"  #provide bucket name which you have created.
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}
