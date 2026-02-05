terraform {
  required_version = ">=1.6"
  backend "s3" {
    profile        = "production"
    bucket         = "terraform.opzkit.io"
    key            = "state/cicd"
    region         = "eu-west-1"
    encrypt        = "true"
    dynamodb_table = "terraform-lock-cicd"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.11.0"
    }
    buildkite = {
      source  = "buildkite/buildkite"
      version = "~> 1.17"
    }
  }
}

module "repositories" {
  source = "./repositories"
}
