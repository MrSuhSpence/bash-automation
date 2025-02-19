terraform {
  backend "s3" {
    bucket = "yourbuckethere"
    key    = "terraform/state/terraform.tfstate"
    region = "us-east-2"
  }
}