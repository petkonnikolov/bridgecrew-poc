resource "azurerm_virtual_network" "example" {
  name                = "bridgecrew-vn-${var.environment}"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tags = {
    git_commit           = "7aef1f37ff0589b267125f6b88c3542c19e4a5f9"
    git_file             = "terraform/azure/networking.tf"
    git_last_modified_at = "2022-05-20 08:08:09"
    git_last_modified_by = "nikolov_p@hotmail.com"
    git_modifiers        = "nikolov_p"
    git_org              = "5kancho"
    git_repo             = "bridgecrew-poc"
    yor_trace            = "b9fb9537-7b24-4f1d-a8c3-3ea4e4776f15"
  }
}

resource "azurerm_subnet" "example" {
  name                 = "bridgecrew-${var.environment}"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.0.0/24"]
  service_endpoints    = ["Microsoft.Storage"]
}