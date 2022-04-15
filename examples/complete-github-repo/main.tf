module "repo" {
  source = "../../"

  name        = var.name
  description = var.description

  visibility = var.visibility
}
