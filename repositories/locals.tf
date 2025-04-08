locals {
  build_check = {
    context : "build",
    integration_id : 15368
  }
  commitlint_check = {
    context : "commitlint",
    integration_id : 15368
  }
  precommit_check = {
    context : "pre-commit",
    integration_id : 15368
  }
  bk_plugin_checks = [
    {
      context        = "plugin-linter"
      integration_id = 15368
      }, {
      context        = "plugin-tester"
      integration_id = 15368
    }
  ]
  default_github_checks = [
    local.commitlint_check,
    local.precommit_check
  ]
  tf_github_checks = concat(local.default_github_checks, [local.build_check])
}
