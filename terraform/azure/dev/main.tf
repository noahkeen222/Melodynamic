data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "melodynamic_dev" {
  name     = var.resource_group.name
  location = var.resource_group.location
  tags = merge(var.default.tags, var.resource_group.tags)
}