resource "azurerm_resource_group" "example" {
  name     = "bridgecrew-${var.environment}"
  location = var.location
  tags = {
    git_commit           = "2d2bb6595c94bd15e3c220dde2749b3ee6baed89"
    git_file             = "terraform/azure/resource_group.tf"
    git_last_modified_at = "2022-05-18 18:51:42"
    git_last_modified_by = "nikolov_p@hotmail.com"
    git_modifiers        = "nikolov_p"
    git_org              = "petkonnikolov"
    git_repo             = "bridgecrew-poc"
    yor_trace            = "c3be4a64-b356-4e49-8330-4941234c6f1e"
  }
}