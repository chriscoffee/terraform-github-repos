resource "github_repository" "this" {
  name        = var.name
  description = var.description

  visibility = var.visibility
}
