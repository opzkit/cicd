resource "github_organization_settings" "org_settings" {
  billing_email                                                = "opzkit@sparetimecoders.com"
  company                                                      = "Opzkit"
  location                                                     = "Sweden"
  name                                                         = "Opzkit"
  has_organization_projects                                    = true
  has_repository_projects                                      = true
  default_repository_permission                                = "read"
  members_can_create_repositories                              = true
  members_can_create_public_repositories                       = true
  members_can_create_private_repositories                      = true
  members_can_create_internal_repositories                     = false
  members_can_create_pages                                     = true
  members_can_create_public_pages                              = true
  members_can_create_private_pages                             = true
  members_can_fork_private_repositories                        = false
  web_commit_signoff_required                                  = false
  advanced_security_enabled_for_new_repositories               = false
  dependabot_alerts_enabled_for_new_repositories               = false
  dependabot_security_updates_enabled_for_new_repositories     = false
  dependency_graph_enabled_for_new_repositories                = false
  secret_scanning_enabled_for_new_repositories                 = false
  secret_scanning_push_protection_enabled_for_new_repositories = false
}
#
# # Secret used by enable auto merge workflows
# resource "github_actions_organization_secret" "pr_github_token" {
#   secret_name     = "RELEASE_PLEASE_TOKEN"
#   visibility      = "all"
#   plaintext_value = var.release_please_token
# }
# TODO
# UPDATECLI_APP_ID
# UPDATECLI_PRIVATE_KEY
