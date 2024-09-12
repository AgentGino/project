variable "route53_zone_name" {
  description = "Name of the Route53 zone"
  type        = string
  default     = "example.com"
}

variable "route53_records" {
  type = list(object({
    name   = string
    type   = string
    ttl    = number
    values = list(string)
  }))
  default = [
    {
      name   = "www"
      type   = "A"
      ttl    = 300
      values = ["192.0.2.1"]
    },
    {
      name   = "mail"
      type   = "CNAME"
      ttl    = 3600
      values = ["mailserver.example.com"]
    }
  ]
}

# variable "providers" {
#   type = map(any)
#   default = {
#     aws = "aws"
#   }
# }