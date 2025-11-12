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

variable "auto_merge_private_key" {
  type        = string
  description = "Private key for Github app for enabling PullRequest Auto merge"
  sensitive   = true
}
