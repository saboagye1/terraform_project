#public subnets

resource "aws_subnet" "dev1" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block1_public}"
}

resource "aws_subnet" "dev2" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "10.0.2.0/24"
}

resource "aws_subnet" "dev3" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "10.0.3.0/24"
}



# private subnets

resource "aws_subnet" "dev_private1" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "10.0.101.0/24"
}

resource "aws_subnet" "dev_private2" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "10.0.102.0/24"
}

resource "aws_subnet" "dev_private3" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "10.0.103.0/24"
}