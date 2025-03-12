
output "acr_login_server" {
  description = "The login server of the ACR"
  value       = azurerm_container_registry.acr.login_server
}

output "acr_admin_username" {
  description = "The admin username of the ACR"
  value       = azurerm_container_registry.acr.admin_username
}
