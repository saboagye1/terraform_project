#get the zone id from your aws route53
resource "aws_route53_record" "wordpress" {
  zone_id = ""
  name    = "wordpress.resolversgroup.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}