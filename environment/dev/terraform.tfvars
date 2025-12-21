

rg_name = {
  rg1 = {
    name     = "nandani_rg6"
    location = "westus"
  }
}

st_name = {
  stg1 = {
    name                     = "stg232"
    rg_name                  = "nandani_rg6"
    location                 = "westus"
    account_replication_type = "GRS"
  }
}

vnet = {
  vnet1 = {
    name          = "frontend_vnet"
    location      = "westus"
    rg_name       = "nandani_rg6"
    address_space = ["10.0.0.0/16"]
  }

  vnet2 = {
    name          = "backend_vnet"
    location      = "westus"
    rg_name       = "nandani_rg6"
    address_space = ["10.1.0.0/16"]
  }
}



compute = {
  vm1 = {
    sub_name              = "frontend_sub"
    vnet_name             = "frontend_vnet"
    rg_name               = "nandani_rg6"
    pip_name              = "frontend_pip"
    nic_name              = "frontend_nic"
    location              = "westus"
    vm_name               = "nandani-frontend"
    size                  = "Standard_D2s_v3"
    publisher             = "Canonical"
    offer                 = "0001-com-ubuntu-server-focal"
    sku                   = "20_04-lts"
    version               = "latest"
    kv_rg_name             = "nandani_kvault"
    kv_name               = "nandani-kv66"
    vm_username           = "vm-username"
    vm_password           = "vm-password"
    subnet_address_prefix = ["10.0.1.0/24"]


  }

  vm2 = {
    sub_name              = "backend_sub"
    vnet_name             = "backend_vnet"
    rg_name               = "nandani_rg6"
    pip_name              = "backend_pip"
    nic_name              = "backend_nic"
    location              = "westus"
    vm_name               = "nandani-backend"
    size                  = "Standard_D2s_v3"
    publisher             = "Canonical"
    offer                 = "0001-com-ubuntu-server-focal"
    sku                   = "20_04-lts"
    version               = "latest"
    kv_rg_name             = "nandani_kvault"
    kv_name               = "nandani-kv66"
    vm_username           = "vm-username"
    vm_password           = "vm-password"
    subnet_address_prefix = ["10.1.2.0/24"]

  }
}

key_vault = {
  kv1 = {
    kv_name  = "nandani-kv4582555"
    rg_name  = "nandani_rg6"
    location = "eastus"
  }
}

pip = {
  pip1 = {
    pip_name = "frontend_pip"
    rg_name  = "nandani_rg6"
    location = "westus"
  }

  pip2 = {
    pip_name = "backend_pip"
    rg_name  = "nandani_rg6"
    location = "westus"
  }
}


sql_server = {
  server1 = {
    server_name = "nandani-srv5984"
    rg_name = "nandani_rg6"
    location = "centralindia"
    version_number = "12.0" 
    kv_name = "nandani-kv66"
    admin_username = "admin-username"
    admin_password = "admin-password"
    kv_rg_name = "nandani_kv"
  }
}

sql_database = {
  db1 = {
    sql_database_name = "nandani-dbcosmo"
    collation = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb = "2"
    sku_name = "S0"
    sql_server_name = "nandani-srv5984"
    rg_name = "nandani_rg6"
  }
}


