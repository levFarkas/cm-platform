locals {
  parent_config = read_terragrunt_config(find_in_parent_folders("root.hcl"))
}

terraform {
  source = "../"
}

inputs = merge(
  local.parent_config.inputs,
  {
    environment = "dev"
  }
)
