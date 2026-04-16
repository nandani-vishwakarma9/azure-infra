# rg_nandani = {
#   rg1 = "west us"
#   rg2 = "west us"
#   rg3 = "central india"
#   rg4 = "west us"
#   rg5 = "east us"
# }

# dynamic block value

subnetnandu = {
  subnet1 = ["10.0.1.0/24"]
  subnet2 = ["10.0.2.0/24"]
  subnet3 = ["10.0.3.0/24"]
  subnet4 = ["10.0.4.0/24"]
  subnet5 = ["10.0.5.0/24"]
}

nsg = {
  nsg1 = {
    name                       = "nsg1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"  
  }
  nsg2 = {
    name                       = "nsg2"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"  
  }
  nsg3 = {
    name                       = "nsg3"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"  
  }
  nsg4 = {
    name                       = "nsg4"
    priority                   = 130
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"  
  }
  nsg5 = {
    name                       = "nsg5"
    priority                   = 140
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"  
  }
}

network_rules = {
  net1 = {
    default_action             = "Deny"
    ip_rules                   = ["100.0.0.1"]
  }
  net1 = {
    default_action             = "Deny"
    ip_rules                   = ["100.0.0.2"]
  }
  net1 = {
    default_action             = "Deny"
    ip_rules                   = ["100.0.0.3"]
  }
  net1 = {
    default_action             = "Deny"
    ip_rules                   = ["100.0.0.4"]
  }
  net1 = {
    default_action             = "Deny"
    ip_rules                   = ["100.0.0.5"]
  }
}