resource "azurerm_network_interface_security_group_association" "todo_asg" {
  network_interface_id      = data.azurerm_network_interface.nic-data.id
  network_security_group_id = data.azurerm_network_security_group.nsg_data.id
}