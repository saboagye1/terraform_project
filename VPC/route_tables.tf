resource "aws_route_table" "dev" {
  vpc_id = "${aws_vpc.dev.id}"
  route {
      cidr_block = 
      gateway_id = "${aws_internet_gateway.id}"
  }
}


resource "aws_subnet_association" "dev1" {
  subnet_id = "${aws_subnet.dev1.id}"
  aws_route_table = "${aws_route_table.dev.id}"
}

resource "aws_subnet_association" "dev2" {
  subnet_id = "${aws_subnet.dev2.id}"
  aws_route_table = "${aws_route_table.dev.id}"
}

resource "aws_subnet_association" "dev3" {
  subnet_id = "${aws_subnet.dev3.id}"
  aws_route_table = "${aws_route_table.dev.id}"
}