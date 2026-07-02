resource "azurerm_virtual_network" "virtnet_dev" {
  name                = var.virtual_network.name
  address_space       = ["10.0.0.0/16"]
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name
}

resource "azurerm_subnet" "subnet_interface" {
  name                 = var.subnet_interface.name
  resource_group_name  = azurerm_resource_group.melodynamic_dev.name
  virtual_network_name = azurerm_virtual_network.virtnet_dev.name
  address_prefixes     = ["10.0.1.0/24"]

  service_endpoints = [ "Microsoft.AzureCosmosDB", "Microsoft.KeyVault", "Microsoft.Storage" ]

    delegation {
    name = "function-app-delegation"

    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/action", 
        ]
    }
  }
}
