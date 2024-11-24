locals {
  envs = ["prod", "stage", "devel"]
}

resource "github_repository_environment" "this" {
  count       = length(local.envs)
  environment = local.envs[count.index]
  repository  = var.repository
}