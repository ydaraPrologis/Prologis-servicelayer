provider "aws" {
  region     = "us-east-1"
  access_key = var.myaccess_key
  secret_key = var.mysecret_key
  #my_session_token = var.my_session_token
}