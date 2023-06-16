provider "azurerm" {
  features {}
  # subscription_id = ""
  # client_id       = ""
  # client_secret   = ""
  # tenant_id       = ""
  # # use_msi         = true
}

resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "East US"
}

output "resource_group_id" {
  value = azurerm_resource_group.example.id
}


# resource "azurerm_virtual_network" "example" {
#   name                = "example-vnet"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
# }

# resource "azurerm_subnet" "example" {
#   name                 = "example-subnet"
#   resource_group_name  = azurerm_resource_group.example.name
#   virtual_network_name = azurerm_virtual_network.example.name
#   address_prefixes     = ["10.0.1.0/24"]
# }
