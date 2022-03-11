resource "aws_route53_zone" "my-play-zone" {
  name = "example.com"

  vpc {
    vpc_id = aws_vpc.main_vpc.id
  }
}

resource "aws_route53_record" "my-example-record" {
  zone_id = aws_route53_zone.my-play-zone.id
  name    = "my-example-record"
  type    = "A"
  alias {
    evaluate_target_health = true
    name                   = aws_lb.alb.dns_name
    zone_id                = aws_lb.alb.zone_id
  }
}
