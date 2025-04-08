variable "name" {
  type        = string
  description = "Name of repository"
}

variable "description" {
  type        = string
  description = "Short description of the Github repository"
  nullable    = true
  default     = null
}

variable "visibility" {
  type        = string
  description = "Github repository visibility, public or private"
  nullable    = false
  default     = "public"
}

# variable "additional_github_checks" {
#   type = list(object({
#     context : string
#     integration_id : optional(number, 72)
#   }))
#   description = "Additional checks for Pull Requests"
#   default     = []
# }

# More config (rules and so on)...
