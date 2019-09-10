workflow "automerge pull requests on check_run updates" {
  on = "check_run"
  resolves = ["automerge"]
}

action "automerge" {
  uses = "pascalgn/automerge-action@33f73f0a562129c7e96123e98af20d4378f1fa3b"
  secrets = ["GITHUB_TOKEN"]
  env = {
    LABELS = "!wip,!work in progress"
    AUTOMERGE = "ready-to-merge"
    MERGE_METHOD = "merge"
  }
}
