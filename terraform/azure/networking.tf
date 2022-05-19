resource "azurerm_virtual_network" "example" {
  name                = "bridgecrew-vn-${var.environment}"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tags = {
    git_commit           = "6ec7c5b67692ff3024838f7b0014c8f50f1d5f31"
    git_file             = "terraform/azure/networking.tf"
    git_last_modified_at = "2022-05-19 08:50:40"
    git_last_modified_by = "nikolov_p@hotmail.com"
    git_modifiers        = "nikolov_p"
    git_org              = "5kancho"
    git_repo             = "bridgecrew-poc"
    yor_trace            = "50aa066f-9bf0-4044-a734-1cee998811ad"
  }
}

resource "azurerm_subnet" "example" {
  name                 = "bridgecrew-${var.environment}"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.0.0/24"]
}