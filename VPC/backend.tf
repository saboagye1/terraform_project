terraform {
  backend "consul" {
    bucket  = "bucket_name"
    key = "path/to/my/vpc"
    region = "us-east-1"
    #dynamodb_table = "dynamodb_name"
  }
}