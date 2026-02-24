resource "azurerm_network_interface" "todo_nic" {
  name                = var.nics.name
  location            = var.nics.location
  resource_group_name = var.nics.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet_data.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.pip_data.id
  

  }
}

# resource "azurerm_network_interface_security_group_association" "todo_asg" {
#   network_interface_id      = azurerm_network_interface.todo_nic.id
#   network_security_group_id = azurerm_network_security_group.todo_nsg.id
# }