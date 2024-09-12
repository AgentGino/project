terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.66"
      configuration_aliases = [ aws.memberaccount ]
    }
  }
}

resource "aws_route53_zone" "primary" {
  provider = aws.memberaccount
  name = var.route53_zone_name
}

resource "aws_route53_record" "www" {
  provider = aws.memberaccount
  for_each = { for record in var.route53_records : record.name => record }

  zone_id = aws_route53_zone.primary.zone_id
  name    = each.value.name
  type    = each.value.type
  ttl     = each.value.ttl
  records = each.value.values
}