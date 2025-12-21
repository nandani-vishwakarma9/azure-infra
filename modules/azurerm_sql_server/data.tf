
data "azurerm_key_vault" "Kv_data" {
    for_each = var.sql_server
  name                = each.value.kv_name
  resource_group_name = each.value.kv_rg_name
}


data "azurerm_key_vault_secret" "kv_server_user" {
    for_each = var.sql_server
  name         = each.value.admin_username
  key_vault_id = data.azurerm_key_vault.Kv_data[each.key].id
}


data "azurerm_key_vault_secret" "kv_server_password" {
    for_each = var.sql_server
  name         = each.value.admin_password
  key_vault_id = data.azurerm_key_vault.Kv_data[each.key].id
}