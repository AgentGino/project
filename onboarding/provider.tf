provider "aws" {
  region = "us-east-1"
  profile = "admin"
  alias = "admin"
}

provider "aws" {
    alias = "memberaccount"
  region = "us-east-1"
  profile = "admin"
  assume_role {
    role_arn = "arn:aws:iam::${module.account-manager.account_id}:role/OrganizationAccountAccessRole"
  }
}