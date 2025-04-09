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

module "renovate-config" {
  source                   = "./repository"
  name                     = "renovate-config"
  description              = "Shared config for renovate bot"
  additional_github_checks = local.default_github_checks
}

module "cicd" {
  source                   = "./repository"
  name                     = "cicd"
  description              = "CI/CD setup for Opzkit"
  additional_github_checks = local.default_github_checks
}

module "pre-commit-buildkite-plugin" {
  source                   = "./repository"
  name                     = "pre-commit-buildkite-plugin"
  additional_github_checks = concat(local.default_github_checks, local.bk_plugin_checks)
}

module "terraform-aws-k8s-addons-aws-sso" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-addons-aws-sso"
  additional_github_checks = local.tf_github_checks
}

module "example" {
  source                   = "./repository"
  name                     = "example"
  additional_github_checks = local.default_github_checks
  archived                 = true
}

module "terraform-aws-k8s-addons-cluster-autoscaler" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-addons-cluster-autoscaler"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-k8s-addons-grafana-k8s-monitoring" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-addons-grafana-k8s-monitoring"
  additional_github_checks = local.tf_github_checks
}

module "govulncheck-action" {
  source                   = "./repository"
  name                     = "govulncheck-action"
  additional_github_checks = local.default_github_checks
}

module "terraform-aws-k8s-addons-keda" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-addons-keda"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-k8s-addons-external-secrets-operator" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-addons-external-secrets-operator"
  additional_github_checks = local.tf_github_checks
}

module "godeadcode-action" {
  source                   = "./repository"
  name                     = "godeadcode-action"
  additional_github_checks = local.default_github_checks
}

module "terraform-aws-k8s-addons-github-runners-controller" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-addons-github-runners-controller"
  additional_github_checks = local.tf_github_checks
}

module "terraform-cloudamqp-rabbitmq" {
  source                   = "./repository"
  name                     = "terraform-cloudamqp-rabbitmq"
  additional_github_checks = local.tf_github_checks
}

module "go-license-check-action" {
  source                   = "./repository"
  name                     = "go-license-check-action"
  additional_github_checks = local.default_github_checks
}

module "terraform-aws-kops-state-store" {
  source                   = "./repository"
  name                     = "terraform-aws-kops-state-store"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-k8s-network" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-network"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-k8s" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-k8s-addons-fluentbit" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-addons-fluentbit"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-k8s-addons-external-dns" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-addons-external-dns"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-rds-instance-postgresql" {
  source                   = "./repository"
  name                     = "terraform-aws-rds-instance-postgresql"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-rds-instance-mysql" {
  source                   = "./repository"
  name                     = "terraform-aws-rds-instance-mysql"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-k8s-addons-github-runners" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-addons-github-runners"
  additional_github_checks = local.tf_github_checks
}

module "nodeamqp" {
  source                   = "./repository"
  name                     = "nodeamqp"
  additional_github_checks = local.default_github_checks
}

module "terraform-aws-k8s-addons-argocd" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-addons-argocd"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-elasticache-redis" {
  source                   = "./repository"
  name                     = "terraform-aws-elasticache-redis"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-dns-validated-certificate" {
  source                   = "./repository"
  name                     = "terraform-aws-dns-validated-certificate"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-aurora-mysql" {
  source                   = "./repository"
  name                     = "terraform-aws-aurora-mysql"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-aurora-postgresql" {
  source                   = "./repository"
  name                     = "terraform-aws-aurora-postgresql"
  additional_github_checks = local.tf_github_checks
}

module "terraform-aws-k8s-argocd-cluster-secret" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-argocd-cluster-secret"
  additional_github_checks = local.tf_github_checks
}

module "argocd-bootstrap-template" {
  source                   = "./repository"
  name                     = "argocd-bootstrap-template"
  additional_github_checks = local.tf_github_checks
}

module "opzkit_github_io" {
  source                   = "./repository"
  name                     = "opzkit.github.io"
  additional_github_checks = local.default_github_checks
  pages = {
    build_type = "legacy"
    cname      = "opzkit.io"
    source = {
      branch = "main"
      path   = "/"
    }
  }
}

module "auth0" {
  source   = "./repository"
  name     = "auth0"
  archived = true
}

module "deliverybot" {
  source   = "./repository"
  name     = "deliverybot"
  archived = true
}

module "terraform-aws-k8s-aws-lb-role-fix" {
  source   = "./repository"
  name     = "terraform-aws-k8s-aws-lb-role-fix"
  archived = true
}

module "terraform-aws-k8s-addons-grafana-agent-operator" {
  source                   = "./repository"
  name                     = "terraform-aws-k8s-addons-grafana-agent-operator"
  additional_github_checks = local.tf_github_checks
  archived                 = true
}

module "cache-buildkite-plugin" {
  source                   = "./repository"
  name                     = "cache-buildkite-plugin"
  additional_github_checks = local.bk_plugin_checks
  archived                 = true
}

module "github" {
  source                   = "./repository"
  name                     = "github"
  additional_github_checks = local.default_github_checks
  archived                 = true
}
