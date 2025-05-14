
# Create an Azure Cosmos DB Account
resource "azurerm_cosmosdb_account" "cosmosdb_account" {
  name                = var.name  # Choose a unique name
  location            = var.location
  resource_group_name = var.resource_group_name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"  # For NoSQL API

  consistency_policy {
    consistency_level = "Eventual"  # Or other levels like "Strong", "BoundedStaleness", "Eventual"
  }

  geo_location {
    location          = var.location
    failover_priority = 0
  }

  # Enable automatic failover (optional, for higher availability)
  # automatic_failover_enabled = true

  # Configure backup policy (optional)
  # backup {
  #   type = "Periodic"
  #   interval_in_minutes = 240  # Every 4 hours
  #   retention_in_hours = 720  # 30 days
  # }

  # Configure network ACLs (optional, for security)
  # ip_range_filter = "0.0.0.0/0"  # Allow all IPs (for testing only, NOT recommended for production)
  # virtual_network_rule {
  #   id = azurerm_subnet.subnet.id  # If using a virtual network
  #   ignore_missing_vnet_service_endpoint = true
  # }
}