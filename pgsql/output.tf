# Output database connection details
output "postgresql_server" {
  description = "PostgreSQL server hostname"
  value       = azurerm_postgresql_flexible_server.pg_server.fqdn
}

output "database_name" {
  description = "Database name"
  value       = azurerm_postgresql_flexible_server_database.pg_database.name
}