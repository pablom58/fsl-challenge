data "github_repository" "this" {
  full_name = "pablom58/fsl-challenge"
}

module "branches" {
  source     = "./modules/branches"
  repository = data.github_repository.this.name
  providers = {
    github: github.gh_provider
  }
}

module "restrictions" {
  source          = "./modules/restrictions"
  branches        = module.branches.branches
  gh_repo_node_id = data.github_repository.this.node_id
  providers = {
    github: github.gh_provider
  }
}

module "environments" {
  source     = "./modules/environments"
  repository = data.github_repository.this.name
  providers = {
    github: github.gh_provider
  }
}