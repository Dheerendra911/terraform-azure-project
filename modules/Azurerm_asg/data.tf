data "azurerm_network_security_group" "nsg_data" {
  name                = var.asgs.dname
  resource_group_name = var.asgs.resource_group_name
}
data "azurerm_network_interface" "nic-data" {
  name                = var.asgs.dnicname
  resource_group_name = var.asgs.resource_group_name
}