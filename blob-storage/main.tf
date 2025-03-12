
resource "azurerm_storage_account" "training_storage" {
    name                     = var.storage_account_name
    resource_group_name      = var.resource_group_name
    location                 = var.location
    account_tier             = var.storage_account_tier
    account_replication_type = var.storage_account_replication_type

    network_rules {
        default_action             = "Allow"
        bypass                     = ["AzureServices"]
        ip_rules                   = []
        virtual_network_subnet_ids = []
    }
}