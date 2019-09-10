workflow "automerge pull requests on updates" {
  on = "pull_request"
  resolves = ["automerge"]
}

workflow "automerge pull requests on reviews" {
  on = "pull_request_review"
  resolves = ["automerge"]
}

workflow "automerge pull requests on status updates" {
  on = "status"
  resolves = ["automerge"]
}

action "automerge" {
  uses = "pascalgn/automerge-action@33f73f0a562129c7e96123e98af20d4378f1fa3b"
  secrets = ["GITHUB_TOKEN"],
  env = {
    LABELS = "!wip"
    AUTOMERGE = "merge-on-green"
    MERGE_METHOD = "merge"
  }
}