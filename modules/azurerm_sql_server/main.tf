resource "azurerm_mssql_server" "sql-server" {
    for_each = var.sql_server
  name                         = each.value.server_name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = each.value.version_number
  administrator_login          = data.azurerm_key_vault_secret.kv_server_user[each.key].value
  administrator_login_password = data.azurerm_key_vault_secret.kv_server_password[each.key].value
}


