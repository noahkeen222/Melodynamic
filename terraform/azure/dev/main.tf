resource "azurerm_resource_group" "melodynamic_dev" {
  name     = "melodynamic-Dev"
  location = "East US"
  tags = {
    environment = "dev"
  }
}

# resource "azurerm_virtual_network" "melodynamic-vn" {
#   name = "melodynamic-network"
#   resource_group_name = azurerm_resource_group.Melodynamic.name
# }

resource "azurerm_cosmosdb_account" "melodynamic_db" {
  name = "melodynamic-db"
  location            = azurerm_resource_group.melodynamic_dev.location
  resource_group_name = azurerm_resource_group.Melodynamic.name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"
  free_tier_enabled   = "true"
  tags                = {environment = "shared"}

  consistency_policy {
    consistency_level = "Session"
  }

  geo_location {
    location          = azurerm_resource_group.melodynamic_dev.id
    failover_priority = 0
  }

  capacity {
    total_throughput_limit = "999"
  }
}