output "zone_id" {
  value = aws_route53_zone.primary.zone_id
}

output "route53_records_details" {
  value = {
    for name, record in aws_route53_record.www : name => {
      id      = record.id
      name    = record.name
      type    = record.type
      ttl     = record.ttl
      records = record.records
    }
  }
}
