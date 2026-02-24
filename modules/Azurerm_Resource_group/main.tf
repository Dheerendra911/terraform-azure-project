resource "azurerm_resource_group" "rg_todo" {
    name=var.rgs.name
    location = var.rgs.location
  
}