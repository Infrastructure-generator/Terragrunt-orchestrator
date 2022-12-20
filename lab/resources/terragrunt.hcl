terraform {
  source = "git::https://github.com/Infrastructure-generator/Modules.git//"
}

include "root" {
  path = find_in_parent_folders("root.hcl")
}
