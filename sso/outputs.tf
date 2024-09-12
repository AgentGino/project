output "permission_set_id" {
  value = aws_ssoadmin_permission_set.admin.id
  description = "Permission set ID"
}

output "permission_set_name" {
  value = aws_ssoadmin_permission_set.admin.name
  description = "Permission set name"
}

output "permission_set_session_duration" {
  value = aws_ssoadmin_permission_set.admin.session_duration
  description = "Permission set session duration"
}

output "ssoadmin_managed_policy_attachment_admin_policy_arn" {
  value = aws_ssoadmin_managed_policy_attachment.admin_policy.instance_arn
  description = "SSO managed policy attachment admin policy arn"
}

output "identitystore_group_display_name" {
  value = aws_identitystore_group.admin_group.display_name
  description = "Identity store group display name"
}

output "admin_user_display_name" {
  value = aws_identitystore_user.admin_user.display_name
  description = "Admin user display name"
}