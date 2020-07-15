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
  value       = "${data.aws_ami.centos.id}"
}


#create an ubuntu instance using the datasource 
resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_key_pair" "provisioner" {
  key_name   = "provisioner-key"
  public_key = "${file('~/.ssh/id_rsa.pub)}"
}


#create a centos instance using the datasource 
resource "aws_instance" "web" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.micro"
  key_name      ="${aws_key_pair.provisioner.key_name"

  tags = {
    Name = "HelloWorld"
  }
}