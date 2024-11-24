output "branches" {
  value = [github_branch.prod.branch, github_branch.stage.branch, github_branch.devel.branch]
}