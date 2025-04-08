variable "github_owner" {
  type        = string
  description = "Github owner (organization)"
  default     = "opzkit"
}

variable "pr_github_token" {
  type        = string
  description = "Github token for enabling PullRequest Auto merge"
  sensitive   = true
}
