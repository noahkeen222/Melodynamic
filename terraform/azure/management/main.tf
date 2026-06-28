resource "azurerm_management_group" "melodynamic" {
  name           = var.management_group.root.name
  display_name = var.management_group.root.display_name
}

resource "azurerm_management_group" "melodynamic_prod" {
  name                         = var.management_group.prod.name
  display_name               = var.management_group.prod.display_name
  parent_management_group_id = azurerm_management_group.melodynamic.id

  subscription_ids = [
    var.subscription.prod,
  ]
}

resource "azurerm_management_group" "melodynamic_dev" {
  name                         = var.management_group.dev.name
  display_name               = var.management_group.dev.display_name
  parent_management_group_id = azurerm_management_group.melodynamic.id

  subscription_ids = [
    var.subscription.dev,
  ]
}