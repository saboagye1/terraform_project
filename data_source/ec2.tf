provider "aws" {
  region = "us-west-2"
}

#Gets ubutu ami
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

output UBUNTU_AMI_ID {
  value       = "${data.aws_ami.ubuntu.id}"
}


#Gets centos ami
data "aws_ami" "centos" {
  most_recent = true

  filter {
    name   = "name"
    values = ["centOS Linux 7 x86_64 HVM EBS *"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["679593333241"] # Canonical
}

output CENTOS_AMI_ID {
  value       = "${data.aws_ami.ubuntu.id}"
}
