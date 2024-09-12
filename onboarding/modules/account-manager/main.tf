terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.66"
    }
  }
}

# get organization id
data "aws_organizations_organization" "org" {}

# get organisation unit by name
data "aws_organizations_organizational_unit" "ou" {
  name = var.ou_name
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

# create account
resource "aws_organizations_account" "account" {
  name = var.account_name
  email = var.account_email
  parent_id = data.aws_organizations_organizational_unit.ou.id
}