resource "aws_route_table" "dev" {
  vpc_id = "${aws_vpc.dev.id}"
  route {
      cidr_block = 
      gateway_id = "${aws_internet_gateway.id}"
  }
}


resource "aws_subnet_association" "dev" {
  subnet_id = "${aws_subnet_id.dev}"
  aws_route_table = "${aws_route_table.dev}"
}
