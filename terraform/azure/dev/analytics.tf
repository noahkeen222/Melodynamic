# Set up after lights on

# resource "azurerm_application_insights" "example" {
#   name                = "tf-test-appinsights"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
#   application_type    = "web"
# }

# output "instrumentation_key" {
#   value = azurerm_application_insights.example.instrumentation_key
# }

# output "app_id" {
#   value = azurerm_application_insights.example.app_id
# }

# resource "azurerm_log_analytics_cluster" "example" {
#   name                = "example-cluster"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location

#   identity {
#     type = "SystemAssigned"
#   }
# }