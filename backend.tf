
terraform {
  backend "s3" {
    bucket = "e5statefiles"
    key    = "projecte5/terraform.tfstate"
    region = "us-west-2" # <--- MAKE SURE THIS MATCHES YOUR BUCKET REGION
  }
} 