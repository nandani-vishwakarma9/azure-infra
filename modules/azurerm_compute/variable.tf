variable "compute" {
  type = map(object({

    # Common Details
    location = string
    rg_name  = string

    # Subnet Details
    sub_name  = string
    vnet_name = string

    # Public IP
    pip_name = string

    # NIC Details
    nic_name = string

    # VM Details
    vm_name        = string
    size           = string

    # Image details
    publisher = string
    offer     = string
    sku       = string
    version   = string
 
   #KeyVault detail
   kv_name = string
   vm_username = string
   vm_password = string
   kv_rg_name = string
   

  #Subent details
  subnet_address_prefix = list(string)

  }))
}
