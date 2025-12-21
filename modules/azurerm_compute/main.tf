resource "azurerm_subnet" "subnet" {
  for_each = var.compute
  name                 = each.value.sub_name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.subnet_address_prefix
}



resource "azurerm_network_interface" "nic" {
  for_each            = var.compute
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.pip_data[each.key].id
  }

}





resource "azurerm_linux_virtual_machine" "virtual_machine" {
  depends_on          = [azurerm_network_interface.nic]
  for_each            = var.compute
  name                = each.value.vm_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  size                = each.value.size
  admin_username      = data.azurerm_key_vault_secret.kv_vm_user[each.key].value
  admin_password      = data.azurerm_key_vault_secret.kv_user_password[each.key].value
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.nic[each.key].id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
}



