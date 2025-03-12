
# Create a PostgreSQL Flexible Server
resource "azurerm_postgresql_flexible_server" "pg_server" {
  name                   = var.pg_server_name
  resource_group_name    = var.rg_name
  location               = var.rg_location
  version                = var.pg_version
  administrator_login    = var.pg_admin_username
  administrator_password = var.pg_admin_password
  sku_name               = var.pg_sku

  storage_mb                    = var.storage_mb # 32GB storage
  backup_retention_days         = 7
  geo_redundant_backup_enabled  = false
  public_network_access_enabled = true # Enable public access
}

# Allow public access from all IPs
resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_all" {
  name             = "AllowAllIPs"
  server_id        = azurerm_postgresql_flexible_server.pg_server.id
  start_ip_address = var.public_access_start_ip
  end_ip_address   = var.public_access_end_ip
}

# Create a database inside the server
resource "azurerm_postgresql_flexible_server_database" "pg_database" {
  name      = var.database_name
  server_id = azurerm_postgresql_flexible_server.pg_server.id
  charset   = "UTF8"
  collation = "en_US.utf8"
}

