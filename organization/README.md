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
| [aws_organizations_organization.my_org](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organization) | resource |
| [aws_organizations_organizational_unit.my_ou](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organizational_unit) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_service_access_principals"></a> [aws\_service\_access\_principals](#input\_aws\_service\_access\_principals) | A list of AWS service principal names for which you want to enable integration with your organization. | `list(string)` | <pre>[<br>  "sso.amazonaws.com"<br>]</pre> | no |
| <a name="input_enabled_policy_types"></a> [enabled\_policy\_types](#input\_enabled\_policy\_types) | The list of Organizations policy types to enable in the Organization Root. The organization must have `feature_set` set to `"ALL"`. | `list(string)` | `[]` | no |
| <a name="input_feature_set"></a> [feature\_set](#input\_feature\_set) | The feature set of the organization. One of 'ALL' or 'CONSOLIDATED\_BILLING'. | `string` | `"ALL"` | no |
| <a name="input_my_ou_name"></a> [my\_ou\_name](#input\_my\_ou\_name) | Name of the organizational unit | `string` | `"my-ou"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_organization_arn"></a> [organization\_arn](#output\_organization\_arn) | n/a |
<!-- END_TF_DOCS -->