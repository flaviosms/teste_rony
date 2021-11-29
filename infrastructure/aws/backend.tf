# Backend configuration require a AWS storage bucket.
terraform {
  backend "s3" {
    bucket = "{var.bucket_name}"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}
