
module "rg" {
  source = "../../modules/azurerm_resource_group"
  resource_group_name = var.rg_name
}

module "storage" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm_storage_accoout"
    storage_account = var.st_name
}

module "Key_vault" {
  depends_on = [ module.rg ]
  source = "../../modules/azurerm_key_vault"
  key_vault = var.key_vault
}


module "compute" {
    depends_on = [ module.rg , module.pip,  module.Vnet ]
  source = "../../modules/azurerm_compute"
  compute = var.compute
}

module "Vnet" {
    depends_on = [ module.rg ]
  source = "../../modules/azurerm_virtual_network"
  vnet = var.vnet
}


module "pip" {
  depends_on = [ module.rg, ]
  source = "../../modules/azurerm_pip"
  pip = var.pip
}

module "sql_server" {
  depends_on = [ module.rg ]
  source = "../../modules/azurerm_sql_server"
  sql_server = var.sql_server
}

module "sql_database" {
  depends_on = [ module.sql_server ]
  source = "../../modules/azurerm_sql_database"
  sql_database = var.sql_database
}

