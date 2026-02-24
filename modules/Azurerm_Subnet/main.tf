resource "azurerm_subnet" "todo_subnet" {
   name                 = var.subnets.name
  resource_group_name  = var.subnets.resource_group_name
  virtual_network_name = var.subnets.virtual_network_name
  address_prefixes     = var.subnets.address_prefixes  
}
