resource "azurerm_network_security_group" "todo_nsg" {
  name                = var.nsgs.name
  location            = var.nsgs.location
  resource_group_name = var.nsgs.resource_group_name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  
}