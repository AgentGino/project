variable "feature_set" {
  description = "The feature set of the organization. One of 'ALL' or 'CONSOLIDATED_BILLING'."
  type        = string
  default     = "ALL"
  nullable    = false
}

variable "aws_service_access_principals" {
  description = "A list of AWS service principal names for which you want to enable integration with your organization."
  type        = list(string)
  default     = ["sso.amazonaws.com"]
  nullable    = false
}

variable "enabled_policy_types" {
  description = "The list of Organizations policy types to enable in the Organization Root. The organization must have `feature_set` set to `\"ALL\"`."
  type        = list(string)
  default     = []
  nullable    = false
}

variable "my_ou_name" {
  description = "Name of the organizational unit"
  type        = string
  default     = "my-ou"
}