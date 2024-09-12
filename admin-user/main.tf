
# Create the IAM user
resource "aws_iam_user" "admin_user" {
  name = var.iam_user_name
  path = var.iam_user_path
}

# Create access key for the user
resource "aws_iam_access_key" "admin_user_key" {
  user = aws_iam_user.admin_user.name
}

# Attach AWS managed AdministratorAccess policy to the user
resource "aws_iam_user_policy_attachment" "admin_access" {
  user       = aws_iam_user.admin_user.name
  policy_arn = var.admin_access_policy_arn
}

# Create an IAM policy for assuming OrganizationAccountAccessRole
resource "aws_iam_policy" "assume_role_policy" {
  name        = var.iam_policy_name
  path        = "/"
  description = var.iam_policy_description

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = "sts:AssumeRole"
        Resource = "arn:aws:iam::*:role/OrganizationAccountAccessRole"
      }
    ]
  })
}

# Attach the assume role policy to the user
resource "aws_iam_user_policy_attachment" "assume_role_attach" {
  user       = aws_iam_user.admin_user.name
  policy_arn = aws_iam_policy.assume_role_policy.arn
}

# Save access key ID and secret access key to a local file
resource "local_file" "aws_keys" {
  content  = "aws_access_key_id = ${aws_iam_access_key.admin_user_key.id}\naws_secret_access_key = ${aws_iam_access_key.admin_user_key.secret}"
  filename = "${path.module}/aws_keys.txt"
}