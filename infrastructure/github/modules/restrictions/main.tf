resource "github_branch_protection" "this" {
  count = length(var.branches)

  repository_id = var.gh_repo_node_id

  pattern          = var.branches[count.index]
  enforce_admins   = true
  allows_deletions = true

  required_status_checks {
    strict = true
  }

  required_pull_request_reviews {
    required_approving_review_count = 0
  }
}
