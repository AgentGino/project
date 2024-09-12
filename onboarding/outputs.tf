output "account_id" {
  value       = module.account-manager.account_id
  description = "Account ID"
}

output "route53_zone_id" {
  value       = module.route53.zone_id
  description = "Route53 Zone ID"
}

output "route53_records_details" {
  description = "Route53 Records Details"
  value       = module.route53.route53_records_details
}
