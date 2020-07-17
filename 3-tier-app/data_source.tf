# Pulls VPC.subnet.igw information e.g network  

data "terraform_remote_state "dev" {
  backend "s3" {
    bucket  = "terraform_project"
    key = "tower/us-east-tools/virginai/tower.tfstate"
    region = "us-east-1"
    #dynamodb_table = "dynamodb_name"
  }
}

#Gets ubuntu AMI information

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
