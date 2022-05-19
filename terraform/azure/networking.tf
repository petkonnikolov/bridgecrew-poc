resource "azurerm_virtual_network" "example" {
  name                = "bridgecrew-vn-${var.environment}"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tags = {
    git_commit           = "2d2bb6595c94bd15e3c220dde2749b3ee6baed89"
    git_file             = "terraform/azure/networking.tf"
    git_last_modified_at = "2022-05-18 18:51:42"
    git_last_modified_by = "nikolov_p@hotmail.com"
    git_modifiers        = "nikolov_p"
    git_org              = "petkonnikolov"
    git_repo             = "bridgecrew-poc"
    yor_trace            = "eeef3a1d-a362-4ccc-8981-f2836abcb766"
  }
}

resource "azurerm_subnet" "example" {
  name                 = "bridgecrew-${var.environment}"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.0.0/24"]
}