output "storage_account_name" {
    value = azurerm_storage_account.training_storage.name
}

output "storage_account_primary_location" {
    value = azurerm_storage_account.training_storage.primary_location
}

output "storage_account_primary_endpoint" {
    value = azurerm_storage_account.training_storage.primary_blob_endpoint
}