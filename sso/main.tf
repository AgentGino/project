resource "aws_ssoadmin_permission_set" "admin" {
  name             = var.permission_set_name
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  session_duration = var.permission_set_session_duration
}
resource "aws_ssoadmin_managed_policy_attachment" "admin_policy" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  managed_policy_arn = var.ssoadmin_managed_policy_attachment_admin_policy_arn
  permission_set_arn = aws_ssoadmin_permission_set.admin.arn
}

resource "aws_identitystore_group" "admin_group" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
  display_name      = var.identitystore_group_display_name
  description       = var.identitystore_group_description
}
resource "aws_ssoadmin_account_assignment" "admin_assignment" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  permission_set_arn = aws_ssoadmin_permission_set.admin.arn
  principal_id       = aws_identitystore_group.admin_group.group_id
  principal_type     = "GROUP"
  target_id          = data.aws_organizations_organization.org.master_account_id
  target_type        = "AWS_ACCOUNT"
}
resource "aws_identitystore_user" "admin_user" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
  display_name      = var.admin_user_display_name
  user_name         = var.admin_user_name
  name {
    given_name  = var.admin_user_given_name
    family_name = var.admin_user_family_name
  }
}

resource "aws_identitystore_group_membership" "admin_user_membership" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
  group_id          = aws_identitystore_group.admin_group.group_id
  member_id         = aws_identitystore_user.admin_user.user_id
}

# data "aws_organizations_organization" "org" {}

resource "aws_ssoadmin_account_assignment" "admin_all_accounts" {
  for_each           = toset(data.aws_organizations_organization.org.accounts[*].id)
  instance_arn       = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  permission_set_arn = aws_ssoadmin_permission_set.admin.arn
  principal_id       = aws_identitystore_group.admin_group.group_id
  principal_type     = "GROUP"
  target_id          = each.value
  target_type        = "AWS_ACCOUNT"
}

# Update the existing inline policy to allow assuming OrganizationAccountAccessRole in all accounts
resource "aws_ssoadmin_permission_set_inline_policy" "assume_role_policy" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  permission_set_arn = aws_ssoadmin_permission_set.admin.arn
  inline_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "sts:AssumeRole"
        Resource = "arn:aws:iam::*:role/OrganizationAccountAccessRole"
      }
    ]
  })
}
