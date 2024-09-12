# Configure the AWS provider
provider "aws" {
  region  = "us-east-1"
  profile = "admin"
  default_tags {
    tags = {
      "Project" = "kidoodle-project"
    }
  }
}
