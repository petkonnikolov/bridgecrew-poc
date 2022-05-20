resource "azurerm_storage_account" "example" {
  name                     = "tgsa${var.environment}${random_integer.rnd_int.result}"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  queue_properties {
    logging {
      delete                = false
      read                  = false
      write                 = true
      version               = "1.0"
      retention_policy_days = 10
    }
    hour_metrics {
      enabled               = true
      include_apis          = true
      version               = "1.0"
      retention_policy_days = 10
    }
    minute_metrics {
      enabled               = true
      include_apis          = true
      version               = "1.0"
      retention_policy_days = 10
    }
  }
  tags = {
    git_commit           = "7aef1f37ff0589b267125f6b88c3542c19e4a5f9"
    git_file             = "terraform/azure/storage.tf"
    git_last_modified_at = "2022-05-20 08:08:09"
    git_last_modified_by = "nikolov_p@hotmail.com"
    git_modifiers        = "nikolov_p"
    git_org              = "5kancho"
    git_repo             = "bridgecrew-poc"
    yor_trace            = "3041f553-bb6a-4ee2-93ae-debe37dd3d3d"
  }
}

resource "azurerm_storage_account_network_rules" "example" {
  storage_account_id = azurerm_storage_account.example.id

  default_action             = "Deny"
  ip_rules                   = ["127.0.0.1"]
  virtual_network_subnet_ids = [azurerm_subnet.example.id]
  bypass                     = ["Metrics"]
}