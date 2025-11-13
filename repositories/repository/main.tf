terraform {
  required_version = ">=1.6"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.8.0"
    }
    buildkite = {
      source  = "buildkite/buildkite"
      version = "~> 1.17"
    }
  }
}
