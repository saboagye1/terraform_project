terraform {
  backend "s3" {
    bucket  = "terraform_project"
    key = "tower/us-east-tools/virginai/tower.tfstate"
    region = "us-east-1"
    #dynamodb_table = "dynamodb_name"
  }
}