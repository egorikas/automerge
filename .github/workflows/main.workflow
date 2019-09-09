workflow "automerge pull requests on updates" {
  on = "pull_request"
  resolves = ["Auto-merge pull requests"]
}

workflow "automerge pull requests on reviews" {
  on = "pull_request_review"
  resolves = ["Auto-merge pull requests"]
}

workflow "automerge pull requests on status updates" {
  on = "status"
  resolves = ["Auto-merge pull requests"]
}

workflow "on pull request pass, merge the branch" {
  resolves = ["Auto-merge pull requests"]
  on       = "check_run"
}

action "Auto-merge pull requests" {
  uses = "./auto_merge_pull_requests"
}