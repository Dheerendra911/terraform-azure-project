data "azurerm_network_interface" "nic_data" {
  name                = "${var.vm.name}-nic"
  resource_group_name = var.vm.resource_group_name
}
