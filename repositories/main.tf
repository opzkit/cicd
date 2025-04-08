terraform {
  required_version = ">=1.6"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.6.0"
    }
    buildkite = {
      source  = "buildkite/buildkite"
      version = "~> 1.17"
    }
  }
}

module "cicd" {
  source      = "./repository"
  name        = "cicd"
  description = "CI/CD setup for Opzkit"
}

module "renovate-config" {
  source      = "./repository"
  name        = "renovate-config"
  description = "Shared config for renovate bot"
}
