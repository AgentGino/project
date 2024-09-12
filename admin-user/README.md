<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.66.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.5.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.admin_user_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_policy.assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_user.admin_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy_attachment.admin_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |
| [aws_iam_user_policy_attachment.assume_role_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |
| [local_file.aws_keys](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_access_policy_arn"></a> [admin\_access\_policy\_arn](#input\_admin\_access\_policy\_arn) | ARN of the AWS managed policy for administrator access | `string` | `"arn:aws:iam::aws:policy/AdministratorAccess"` | no |
| <a name="input_iam_policy_description"></a> [iam\_policy\_description](#input\_iam\_policy\_description) | Description of the IAM policy | `string` | `"Policy for assuming OrganizationAccountAccessRole"` | no |
| <a name="input_iam_policy_name"></a> [iam\_policy\_name](#input\_iam\_policy\_name) | Name of the IAM policy | `string` | `"AssumeOrganizationAccountAccessRole"` | no |
| <a name="input_iam_user_name"></a> [iam\_user\_name](#input\_iam\_user\_name) | Name of the IAM user | `string` | `"organisation-admin-user"` | no |
| <a name="input_iam_user_path"></a> [iam\_user\_path](#input\_iam\_user\_path) | Path of the IAM user | `string` | `"/"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_key_id"></a> [access\_key\_id](#output\_access\_key\_id) | n/a |
| <a name="output_secret_access_key"></a> [secret\_access\_key](#output\_secret\_access\_key) | n/a |
<!-- END_TF_DOCS -->