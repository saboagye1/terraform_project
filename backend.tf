terraform {
  backend "consul" {
    bucket  = "bucket_name"
    key = "path/to/my/key"
    region = "us-east-1"
    #dynamodb_table = "dynamodb_name"
  }
}