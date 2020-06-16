output "vpc_id" {
  value = "${aws_vpc.dev.id}"
}

output "subnet1" {
  value = "${aws_subnet.dev1.id}"
}

output "subnet1" {
  value = "${aws_subnet.dev2.id}"
}

output "subnet1" {
  value = "${aws_subnet.dev3.id}"
}

output "private_subnet1" {
  value = "${aws_subnet.dev1.id}"
}

output "private_subnet2" {
  value = "${aws_subnet.dev2.id}"
}

output "private_subnet3" {
  value = "${aws_subnet.dev3.id}"
}

output "internet_gateway" {
  value = "${aws_internet_gateway.dev.id}"
}
