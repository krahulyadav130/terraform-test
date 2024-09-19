resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = azurerm_resource_group.rsg.location
  resource_group_name = azurerm_resource_group.rsg.name
  address_space       = ["10.0.0.0/16"]


  subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet {
    name             = "subnet2"
    address_prefixes = ["10.0.2.0/24"]
    
  }
  
}