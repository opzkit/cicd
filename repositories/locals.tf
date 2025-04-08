locals {
  github_checks = [
    {
      context : "commitlint",
      integration_id : 15368
    },
    {
      context : "pre-commit",
      integration_id : 15368
    }
  ]
}
