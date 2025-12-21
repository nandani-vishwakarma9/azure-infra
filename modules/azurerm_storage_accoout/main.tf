resource "azurerm_storage_account" "storage" {
  for_each                 = var.storage_account
  name                     = each.value.name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = each.value.account_replication_type

  # tags = each.value.tags
}



