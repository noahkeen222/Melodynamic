resource "azurerm_key_vault" "example" {
  name                        = "examplekeyvault"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  public_network_access_enabled = true
  
  # network_acls {
  #   bypass = "AzureServices"
  #   default_action = "Deny"
  #
  #   virtual_network_subnet_ids = [
  #     azurerm_subnet.example.id
  #   ]
  # }

  sku_name = "standard"

  access_policy {
    tenant_id = var.secrets.tenant.id
    object_id = var.secrets.admin.id

    key_permissions = [
      "Get", "List", "Set", "Delete", "Purge", "Recover"
    ]

    secret_permissions = [
      "Get", "List", "Set", "Delete", "Purge", "Recover"
    ]

    storage_permissions = [
      "Get", "List", "Set", "Delete", "Purge", "Recover"
    ]

    # tags = merge(var.default.tags, var.key_vault.tags)
  }
}