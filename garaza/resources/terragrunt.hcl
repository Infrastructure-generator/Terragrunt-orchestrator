terraform {
  source = "git::https://github.com/Infrastructure-generator/Modules.git//"
  extra_arguments "set_workspace_env" {
    commands = ["init", "plan", "state", "apply", "destroy", "refresh", "validate", "fmt"]
    env_vars = {
      TF_WORKSPACE = "garaza"
    }
  }
}

include "root" {
  path = find_in_parent_folders("root.hcl")
}
