variable "permission_set_name" {
  description = "Name of the permission set"
  type        = string
  default     = "AdminPermissionSet"
}

variable "permission_set_session_duration" {
  description = "Session duration for the permission set"
  type        = string
  default     = "PT12H"
}

variable "ssoadmin_managed_policy_attachment_admin_policy_arn" {
  description = "ARN of the AWS managed policy for administrator access"
  type        = string
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}

variable "identitystore_group_display_name" {
  description = "Display name of the identity store group"
  type        = string
  default     = "AdminGroup"
}

variable "identitystore_group_description" {
  description = "Description of the identity store group"
  type        = string
  default     = "Admin group for organization access"
}

variable "admin_user_display_name" {
  description = "Display name of the admin user"
  type        = string
  default     = "AdminUser"
}

variable "admin_user_name" {
  description = "Name of the admin user"
  type        = string
  default     = "AdminUser"
}

variable "admin_user_given_name" {
  description = "Given name of the admin user"
  type        = string
  default     = "Admin"
}

variable "admin_user_family_name" {
  description = "Family name of the admin user"
  type        = string
  default     = "User"
}