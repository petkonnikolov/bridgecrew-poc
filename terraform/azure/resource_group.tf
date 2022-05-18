resource "azurerm_resource_group" "example" {
  name     = "bridgecrew-${var.environment}"
  location = var.location
}