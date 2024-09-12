# Create the AWS Organization
resource "aws_organizations_organization" "my_org" {
  feature_set = var.feature_set
  
  aws_service_access_principals = var.aws_service_access_principals
  
  enabled_policy_types = var.enabled_policy_types
}

# Create the AWS Organization Unit
resource "aws_organizations_organizational_unit" "my_ou" {
  name      = var.my_ou_name
  parent_id = aws_organizations_organization.my_org.roots[0].id
}