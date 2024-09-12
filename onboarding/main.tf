module "account-manager" {
  source        = "./modules/account-manager"
  providers = {
    aws = aws.admin
  }
  account_name  = var.account_details.account_name
  account_email = var.account_details.account_email
  ou_name       = var.account_details.ou_name
}

resource "null_resource" "sleep" {
  provisioner "local-exec" {
    command = "sleep 120"
  }
}

module "route53" {
  source = "./modules/route53"
    depends_on = [ module.account-manager, null_resource.sleep ]
  providers = {
    aws.memberaccount = aws.memberaccount
  }

  route53_zone_name = var.route53_zone_name
  route53_records = var.route53_records
}
