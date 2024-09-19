resource "azurerm_storage_blob" "uploadfile" {
    name = "data-logs.txt"
    storage_account_name = azurerm_storage_account.storageaccount.name
    storage_container_name = azurerm_storage_container.container.name
    type = "Block"
    source = "datalog.txt"
  
}
resource "azurerm_storage_blob" "uploadfile-1" {
    name = "datalogs.txt"
    storage_account_name = azurerm_storage_account.storageaccount.name
    storage_container_name = azurerm_storage_container.container.name
    type = "Block"
    source = "datalog-1.txt"
  
}