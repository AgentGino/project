# Configure the AWS provider
provider "aws" {
  region  = "us-east-1"
  profile = "root"
  default_tags {
    tags = {
      "Project" = "kidoodle-project"
    }
  }
}
