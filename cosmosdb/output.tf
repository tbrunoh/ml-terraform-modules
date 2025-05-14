# Define outputs
output "cosmosdb_account_name" {
  value       = azurerm_cosmosdb_account.cosmosdb_account.name
  description = "The name of the Cosmos DB account."
}

output "cosmosdb_account_endpoint" {
  value       = azurerm_cosmosdb_account.cosmosdb_account.endpoint
  description = "The endpoint of the Cosmos DB account."
}

output "cosmosdb_account_primary_master_key" {
  value       = azurerm_cosmosdb_account.cosmosdb_account.primary_master_key
  description = "The primary master key for the Cosmos DB account (use with caution)."
  sensitive   = true  # Mark as sensitive to prevent it from being displayed in plain text
}

output "cosmosdb_account_primary_readonly_master_key" {
  value       = azurerm_cosmosdb_account.cosmosdb_account.primary_readonly_master_key
  description = "The primary read-only master key for the Cosmos DB account."
  sensitive   = true
}