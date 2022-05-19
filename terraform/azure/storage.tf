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
    git_commit           = "38106d6c3f6eabecd28c47c684efeb7a5cedd3fb"
    git_file             = "terraform/azure/storage.tf"
    git_last_modified_at = "2022-05-18 14:39:44"
    git_last_modified_by = "nikolov_p@hotmail.com"
    git_modifiers        = "nikolov_p"
    git_org              = "petkonnikolov"
    git_repo             = "bridgecrew-poc"
    yor_trace            = "5aa070b1-c756-482e-9e18-071b35b1afde"
  }
}

resource "azurerm_storage_account_network_rules" "example" {
  storage_account_id = azurerm_storage_account.example.id

  default_action             = "Deny"
  ip_rules                   = ["127.0.0.1"]
  virtual_network_subnet_ids = [azurerm_subnet.example.id]
  bypass                     = ["Metrics"]
}
