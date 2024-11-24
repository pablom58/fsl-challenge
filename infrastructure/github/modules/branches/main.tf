resource "github_branch" "prod" {
  repository = var.repository
  branch     = "prod"
}

resource "github_branch" "stage" {
  repository    = var.repository
  branch        = "stage"
  source_branch = github_branch.prod.branch
}

resource "github_branch" "devel" {
  repository    = var.repository
  branch        = "devel"
  source_branch = github_branch.stage.branch
}

resource "github_branch_default" "this" {
  repository = var.repository
  branch     = github_branch.devel.branch
}