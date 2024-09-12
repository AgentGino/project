variable "iam_user_name" {
  description = "Name of the IAM user"
  type        = string
  default     = "organisation-admin-user"
}

variable "iam_user_path" {
  description = "Path of the IAM user"
  type        = string
  default     = "/"
}

variable "admin_access_policy_arn" {
  description = "ARN of the AWS managed policy for administrator access"
  type        = string
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}

variable "iam_policy_name" {
  description = "Name of the IAM policy"
  type        = string
  default     = "AssumeOrganizationAccountAccessRole"
}

variable "iam_policy_description" {
  description = "Description of the IAM policy"
  type        = string
  default     = "Policy for assuming OrganizationAccountAccessRole"
}