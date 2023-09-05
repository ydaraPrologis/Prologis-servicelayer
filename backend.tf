terraform {
  backend "s3" {
    bucket         = "crcservicelayer"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tfstate-lock"
    encrypt        = true
  }
}