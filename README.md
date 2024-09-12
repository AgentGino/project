# Kidoodle Project

Steps to setup the project:

1. Create a new Admin user in the root account (optional)
2. Create an Organization
3. Create an SSO instance
4. Onboard a member account and setup Route53 DNS records

## 1. Create a new Admin user in the root account (optional)

1. Open the `admin-user ` directory
2. Run `terraform init`, `terraform plan` and `terraform apply`
3. Copy the `aws_access_key_id` and `aws_secret_access_key` from `aws_keys.txt` file and save it in `.aws/credentials` file in the root directory as `admin` profile
4. Run `aws sts get-caller-identity` to verify the admin user

New Admin user is created with AdministratorAccess policy and AssumeOrganizationAccountAccessRole policy attached to it. User can assume OrganizationAccountAccessRole in all accounts in the Organization. The user is used to create the Organization, SSO instance, onboard the member account and setup Route53 DNS records.
 
**NOTE: Before running any of the terraform apply below, make sure you configure the `admin` profile in the root directory as `admin` profile. Every Service has a terraform.tfvars file with default inputs.**

## 2. Create an Organization

1. Open the `organization` directory
2. Run `terraform init`, `terraform plan` and `terraform apply`

A new AWS Organization is created with the following features:

- Feature set: ALL
- AWS service access principals: sso.amazonaws.com
- Enabled policy types: SERVICE_CONTROL_POLICY

It also creates an Organizational Unit with the name `my-ou`

## 3. Create an SSO instance

NOTE: Before running the terraform apply, make sure to login to the AWS console and navigate to the SSO console and enable SSO in the root account. This is required to create the SSO instance. This is a one time setup.

1. Open the `sso` directory
2. Run `terraform init`, `terraform plan` and `terraform apply`


A new SSO instance is created with the following settings:

- Permission set name: admin-permission-set
- Permission set session duration: PT12H
- SSO managed policy attachment: AdministratorAccess
- Identity store group display name: admin-group

PS: SSO module could throw an error sometimes when creating the SSO instance. If that happens, run the terraform apply again.

## 4. Onboard a member account and setup Route53 DNS records

1. Open the `onboarding` directory
2. Run `terraform init`, `terraform plan` and `terraform apply`

The member account is onboarded to the Organization using Organization Unit as input and the Route53 DNS records are created. A sleep is added to the `onboarding` module to allow the member account to complete the onboarding process. `admin` profile assumes the OrganizationAccountAccessRole in the member account dynamically and setups the Route53 DNS records.

## 5. Rerun SSO service to update the SSO instance

1. Open the `sso` directory
2. Run  `terraform apply`

This will update Permission set to allow SSO user to access new accounts.

## 6. Cleanup

1. Open the `onboarding` directory
2. Run `terraform destroy`
3. Open the `sso` directory
4. Run `terraform destroy`
5. Open the `rganization` directory
6. Run `terraform destroy`
7. Open the `admin-users` directory
8. Run `terraform destroy`