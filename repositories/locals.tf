locals {
  integration_id = 15368
  build_check = {
    context : "build",
    integration_id : local.integration_id
  }
  commitlint_check = {
    context : "commitlint",
    integration_id : local.integration_id
  }
  precommit_check = {
    context : "pre-commit",
    integration_id : local.integration_id
  }
  bk_plugin_checks = [
    {
      context        = "plugin-linter"
      integration_id = local.integration_id
      }, {
      context        = "plugin-tester"
      integration_id = local.integration_id
    }
  ]
  default_github_checks = [
    local.commitlint_check,
    local.precommit_check
  ]
  tf_github_checks = concat(local.default_github_checks, [local.build_check])
}
