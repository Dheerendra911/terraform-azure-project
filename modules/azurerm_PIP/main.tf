resource "azurerm_public_ip" "todo_pip" {
  name                = var.pips.pipname
  resource_group_name = var.pips.resource_group_name
  location            = var.pips.location
  allocation_method   = "Static"
  sku                 = "Standard"


}
