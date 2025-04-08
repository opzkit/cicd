resource "github_repository" "repository" {
  name        = var.name
  description = var.description

  visibility = var.visibility

  has_discussions             = true
  has_issues                  = true
  has_projects                = false
  has_wiki                    = false
  allow_squash_merge          = true
  delete_branch_on_merge      = true
  archive_on_destroy          = true
  vulnerability_alerts        = true
  allow_update_branch         = true
  web_commit_signoff_required = true

  allow_merge_commit = false
  allow_auto_merge   = true
  archived           = var.archived
  # security_and_analysis {
  # advanced_security {
  #   status = "enabled"
  # }
  # secret_scanning {
  #   status = "enabled"
  # }
  # secret_scanning_push_protection {
  #   status = "enabled"
  # }
  # }
}


resource "github_repository_ruleset" "ruleset" {
  name        = "main"
  repository  = github_repository.repository.name
  target      = "branch"
  enforcement = "active"

  conditions {
    ref_name {
      include = ["~DEFAULT_BRANCH"]
      exclude = []
    }
  }

  bypass_actors {
    actor_id    = 5
    actor_type  = "RepositoryRole"
    bypass_mode = "always"
  }

  rules {
    creation                = true
    update                  = false
    deletion                = true
    required_linear_history = true
    required_signatures     = true
    non_fast_forward        = true

    pull_request {
      require_code_owner_review       = true
      dismiss_stale_reviews_on_push   = true
      required_approving_review_count = 1
    }


    required_status_checks {
      required_check {
        context        = "Semantic PR"
        integration_id = local.semantic_pr_integration_id
      }
      dynamic "required_check" {
        for_each = toset(var.additional_github_checks)
        content {
          context        = required_check.value.context
          integration_id = required_check.value.integration_id
        }
      }
    }
  }
}
