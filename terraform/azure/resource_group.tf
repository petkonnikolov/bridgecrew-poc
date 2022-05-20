resource "azurerm_resource_group" "example" {
  name     = "bridgecrew-${var.environment}"
  location = var.location
  tags = {
    git_commit           = "7aef1f37ff0589b267125f6b88c3542c19e4a5f9"
    git_file             = "terraform/azure/resource_group.tf"
    git_last_modified_at = "2022-05-20 08:08:09"
    git_last_modified_by = "nikolov_p@hotmail.com"
    git_modifiers        = "nikolov_p"
    git_org              = "5kancho"
    git_repo             = "bridgecrew-poc"
    yor_trace            = "c04c08ab-8c06-4cf5-901e-b62fdb060207"
  }
}