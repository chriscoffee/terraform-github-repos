resource "github_repository" "this" {
  name                   = var.name
  description            = var.description
  homepage_url           = var.homepage_url
  visibility             = var.visibility
  has_issues             = var.has_issues
  has_projects           = var.has_projects
  has_wiki               = var.has_wiki
  has_downloads          = var.has_downloads
  delete_branch_on_merge = var.delete_branch_on_merge
}
