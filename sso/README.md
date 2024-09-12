<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.66.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_identitystore_group.admin_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/identitystore_group) | resource |
| [aws_identitystore_group_membership.admin_user_membership](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/identitystore_group_membership) | resource |
| [aws_identitystore_user.admin_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/identitystore_user) | resource |
| [aws_ssoadmin_account_assignment.admin_all_accounts](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_account_assignment) | resource |
| [aws_ssoadmin_account_assignment.admin_assignment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_account_assignment) | resource |
| [aws_ssoadmin_managed_policy_attachment.admin_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_managed_policy_attachment) | resource |
| [aws_ssoadmin_permission_set.admin](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_permission_set) | resource |
| [aws_ssoadmin_permission_set_inline_policy.assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_permission_set_inline_policy) | resource |
| [aws_organizations_organization.org](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |
| [aws_ssoadmin_instances.sso](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssoadmin_instances) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_user_display_name"></a> [admin\_user\_display\_name](#input\_admin\_user\_display\_name) | Display name of the admin user | `string` | `"AdminUser"` | no |
| <a name="input_admin_user_family_name"></a> [admin\_user\_family\_name](#input\_admin\_user\_family\_name) | Family name of the admin user | `string` | `"User"` | no |
| <a name="input_admin_user_given_name"></a> [admin\_user\_given\_name](#input\_admin\_user\_given\_name) | Given name of the admin user | `string` | `"Admin"` | no |
| <a name="input_admin_user_name"></a> [admin\_user\_name](#input\_admin\_user\_name) | Name of the admin user | `string` | `"AdminUser"` | no |
| <a name="input_identitystore_group_description"></a> [identitystore\_group\_description](#input\_identitystore\_group\_description) | Description of the identity store group | `string` | `"Admin group for organization access"` | no |
| <a name="input_identitystore_group_display_name"></a> [identitystore\_group\_display\_name](#input\_identitystore\_group\_display\_name) | Display name of the identity store group | `string` | `"AdminGroup"` | no |
| <a name="input_permission_set_name"></a> [permission\_set\_name](#input\_permission\_set\_name) | Name of the permission set | `string` | `"AdminPermissionSet"` | no |
| <a name="input_permission_set_session_duration"></a> [permission\_set\_session\_duration](#input\_permission\_set\_session\_duration) | Session duration for the permission set | `string` | `"PT12H"` | no |
| <a name="input_ssoadmin_managed_policy_attachment_admin_policy_arn"></a> [ssoadmin\_managed\_policy\_attachment\_admin\_policy\_arn](#input\_ssoadmin\_managed\_policy\_attachment\_admin\_policy\_arn) | ARN of the AWS managed policy for administrator access | `string` | `"arn:aws:iam::aws:policy/AdministratorAccess"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_user_display_name"></a> [admin\_user\_display\_name](#output\_admin\_user\_display\_name) | Admin user display name |
| <a name="output_identitystore_group_display_name"></a> [identitystore\_group\_display\_name](#output\_identitystore\_group\_display\_name) | Identity store group display name |
| <a name="output_permission_set_id"></a> [permission\_set\_id](#output\_permission\_set\_id) | Permission set ID |
| <a name="output_permission_set_name"></a> [permission\_set\_name](#output\_permission\_set\_name) | Permission set name |
| <a name="output_permission_set_session_duration"></a> [permission\_set\_session\_duration](#output\_permission\_set\_session\_duration) | Permission set session duration |
| <a name="output_ssoadmin_managed_policy_attachment_admin_policy_arn"></a> [ssoadmin\_managed\_policy\_attachment\_admin\_policy\_arn](#output\_ssoadmin\_managed\_policy\_attachment\_admin\_policy\_arn) | SSO managed policy attachment admin policy arn |
<!-- END_TF_DOCS -->