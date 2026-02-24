data "azurerm_subnet" "subnet_data" {
  name                 = var.nics.dname
  virtual_network_name = var.nics.virtual_network_name
  resource_group_name  = var.nics.resource_group_name
}
data "azurerm_public_ip" "pip_data" {
  name                = var.nics.pipname
  resource_group_name = var.nics.resource_group_name
}
