output "public_ip_address" {

  value = azurerm_linux_virtual_machine.virtual_machine.public_ip_address
}

output "database_id" {
  value = azurerm_mssql_database.mssql_database.id
}