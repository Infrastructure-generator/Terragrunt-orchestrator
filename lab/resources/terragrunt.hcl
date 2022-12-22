terraform {
  source = "git::https://github.com/Infrastructure-generator/Modules.git//"
  extra_arguments "set_workspace_env" {
    commands = ["init", "plan", "state", "apply", "destroy", "refresh", "validate", "fmt"]
    env_vars = {
      TF_WORKSPACE = "lab"
    }
  }

  before_hook "set_workspace" {
    commands = ["plan", "state", "apply", "destroy", "refresh", "validate", "fmt"]
    execute = ["terraform", "workspace", "select", "lab"]
  }
}

include "root" {
  path = find_in_parent_folders("root.hcl")
}
