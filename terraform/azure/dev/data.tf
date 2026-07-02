resource "azurerm_storage_account" "example" {
  name                = "storageaccountname"
  resource_group_name = azurerm_resource_group.example.name

  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  network_rules {
    default_action             = "Deny"
    ip_rules                   = ["100.0.0.1"]
    virtual_network_subnet_ids = [azurerm_subnet.example.id]
  }

  tags = {
    environment = "staging"
  }
}

resource "azurerm_cosmosdb_account" "melodynamic_db" {
  name = var.cosmos_db.name
  location            = azurerm_resource_group.melodynamic_dev.location
  resource_group_name = azurerm_resource_group.Melodynamic.name
  offer_type          = var.cosmos_db.offer_type
  kind                = var.cosmos_db.kind
  free_tier_enabled   = var.cosmos_db.free_tier_enabled
  tags                = merge(var.default.tags, var.cosmos_db.tags)

  consistency_policy {
    consistency_level = var.cosmos_db.consistency_policy.consistency_level
  }

  geo_location {
    location          = var.resource_group.location
    failover_priority = var.cosmos_db.capacity.failover_priority
  }

  capacity {
    total_throughput_limit = var.cosmos_db.capacity.total_throughput_limit
  }
}

