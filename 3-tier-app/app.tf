

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  subnet_id = "${data.terraform_remote_state.dev.Public_Subnet1}"
}

module "wordpress" {
  source = "terraform-aws-modules/autoscaling/aws"

  # Launch configuration
  lc_name = "wordpress-lc"

  image_id        = "${data.aws_ami.ubuntu.id}"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.allow_tls.id"]



  # Auto scaling group
  asg_name                  = "wordpress-asg"
  vpc_zone_identifier       = [
                               "${data.terraform_remote_state.dev.Public_Subnet1}",
                               "${data.terraform_remote_state.dev.Public_Subnet2}",
                               "${data.terraform_remote_state.dev.Public_Subnet3}",
                               ]
  health_check_type         = "EC2"
  min_size                  = 0
  max_size                  = 1
  desired_capacity          = 1
  wait_for_capacity_timeout = 0
}