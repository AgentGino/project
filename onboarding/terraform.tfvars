account_details = {
  account_name  = "my-account"
  account_email = "ghimakarreddy+my-my-ou-test-1@gmail.com"
  ou_name       = "my-ou"
}

route53_zone_name = "mycompany.com"
route53_records = [
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
