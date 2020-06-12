resource "aws_instance" "web" {
  ami           = "$ami-number"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.deployer.key_name}"

  tags = {
    Name = "HelloWorld"
  }
}