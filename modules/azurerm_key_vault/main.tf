resource "azurerm_key_vault" "KeyVault" {
  for_each                        = var.key_vault
  name                            = each.value.kv_name
  location                        = each.value.location
  resource_group_name             = each.value.rg_name
  enabled_for_disk_encryption     = true
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days      = 7
  purge_protection_enabled        = true
  enabled_for_deployment          = true
  enabled_for_template_deployment = true
  sku_name = "standard"
}

