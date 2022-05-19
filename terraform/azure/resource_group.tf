resource "azurerm_resource_group" "example" {
  name     = "bridgecrew-${var.environment}"
  location = var.location
  tags = {
    git_commit           = "6ec7c5b67692ff3024838f7b0014c8f50f1d5f31"
    git_file             = "terraform/azure/resource_group.tf"
    git_last_modified_at = "2022-05-19 08:50:40"
    git_last_modified_by = "nikolov_p@hotmail.com"
    git_modifiers        = "nikolov_p"
    git_org              = "5kancho"
    git_repo             = "bridgecrew-poc"
    yor_trace            = "487b8838-fae9-45cc-b3d5-7fce59a2cd3a"
  }
}