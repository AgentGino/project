variable "account_name" {
  description = "Name of the account"
  type        = string
  default     = "my-account"
}

variable "account_email" {
  description = "Email address of the account"
  type        = string
  default     = "my-account@example.com"
}

variable "ou_name" {
  description = "Name of the organizational unit"
  type        = string
  default     = "my-ou"
}