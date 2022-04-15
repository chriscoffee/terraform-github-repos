variable "name" {
  description = "The name of the repository."
  type        = string
}

variable "description" {
  description = "A description of the repository."
  type        = string
  default     = ""
}

variable "visibility" {
  description = "Can be public or private. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, visibility can also be internal. The visibility parameter overrides the private parameter."
  type        = string
  default     = "private" # Keep it secret, keep it safe.
}

variable "homepage_url" {
  description = "The website of the repository."
  type        = string
  default     = null
}

variable "has_issues" {
  description = "Set to true to enable the GitHub Issues features on the repository. (Default: false)"
  type        = bool
  default     = false
}

variable "has_projects" {
  description = "Set to true to enable the GitHub Projects features on the repository. Per the github documentation when in an organization that has disabled repository projects it will default to false and will otherwise default to true. If you specify true when it has been disabled it will return an error.  (Default: false)"
  type        = bool
  default     = false
}

variable "has_wiki" {
  description = "Set to true to enable the GitHub Wiki features on the repository. (Default: false)"
  type        = bool
  default     = false
}

variable "has_downloads" {
  description = "Set to true to enable the (deprecated) downloads features on the repository. (Default: false)"
  type        = bool
  default     = false
}
variable "delete_branch_on_merge" {
  description = "Whether or not to delete the merged branch after merging a pull request. (Default: false)"
  type        = bool
  default     = true
}
