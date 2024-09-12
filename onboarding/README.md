<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_account-manager"></a> [account-manager](#module\_account-manager) | ./modules/account-manager | n/a |
| <a name="module_route53"></a> [route53](#module\_route53) | ./modules/route53 | n/a |

## Resources

| Name | Type |
|------|------|
| [null_resource.sleep](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_details"></a> [account\_details](#input\_account\_details) | n/a | <pre>object({<br>    account_name  = string<br>    account_email = string<br>    ou_name       = string<br>  })</pre> | <pre>{<br>  "account_email": "ghimakarreddy+my-my-ou-test-1@gmail.com",<br>  "account_name": "my-account",<br>  "ou_name": "my-ou"<br>}</pre> | no |
| <a name="input_route53_records"></a> [route53\_records](#input\_route53\_records) | n/a | <pre>list(object({<br>    name   = string<br>    type   = string<br>    ttl    = number<br>    values = list(string)<br>  }))</pre> | <pre>[<br>  {<br>    "name": "www",<br>    "ttl": 300,<br>    "type": "A",<br>    "values": [<br>      "192.0.2.1"<br>    ]<br>  },<br>  {<br>    "name": "mail",<br>    "ttl": 3600,<br>    "type": "CNAME",<br>    "values": [<br>      "mailserver.example.com"<br>    ]<br>  }<br>]</pre> | no |
| <a name="input_route53_zone_name"></a> [route53\_zone\_name](#input\_route53\_zone\_name) | Name of the Route53 zone | `string` | `"example.com"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | Account ID |
| <a name="output_route53_records_details"></a> [route53\_records\_details](#output\_route53\_records\_details) | Route53 Records Details |
| <a name="output_route53_zone_id"></a> [route53\_zone\_id](#output\_route53\_zone\_id) | Route53 Zone ID |
<!-- END_TF_DOCS -->