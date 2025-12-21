

data "azurerm_public_ip" "pip_data" {
    for_each = var.compute
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
}


data "azurerm_key_vault" "Kv_data" {
    for_each = var.compute
  name                = each.value.kv_name
  resource_group_name = each.value.kv_rg_name
}


data "azurerm_key_vault_secret" "kv_vm_user" {
    for_each = var.compute
  name         = each.value.vm_username
  key_vault_id = data.azurerm_key_vault.Kv_data[each.key].id
}


data "azurerm_key_vault_secret" "kv_user_password" {
    for_each = var.compute
  name         = each.value.vm_password
  key_vault_id = data.azurerm_key_vault.Kv_data[each.key].id
}