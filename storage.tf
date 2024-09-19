resource "azurerm_storage_account" "storageaccount" {
  name = "rahulstroagetest12123"
  location = azurerm_resource_group.rsg.location
  resource_group_name = azurerm_resource_group.rsg.name
  account_tier =  "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_storage_container" "container" {
    name = "datalog"
    storage_account_name = azurerm_storage_account.storageaccount.name
    container_access_type = "private"
  
}