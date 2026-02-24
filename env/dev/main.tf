module "rg" {
  source   = "../../modules/Azurerm_Resource_group"
  for_each = var.rg_todo
  rgs = each.value
}

module "vnet" {
 source = "../../modules/Azurerm_Virtual_network"
 for_each = var.vnet_todo
 vnets = each.value
  depends_on = [module.rg]
}

module "subnet" {
source = "../../modules/Azurerm_Subnet"
for_each = var.subnet_todo
subnets = each.value
  depends_on = [module.vnet]
}

module "nsg" {
source = "../../modules/Azurerm_nsg"
for_each = var.nsg_todo
nsgs = each.value
  depends_on = [ module.rg ]
}

module "vm" {
 source = "../../modules/Azurerm_Virtual_machine"
 for_each = var.vm_todo
 vm = each.value
  depends_on = [ module.subnet,module.nsg ]
}

module "asg" {
 source = "../../modules/Azurerm_asg"
 for_each = var.todo_asg
 asgs = each.value
depends_on = [ module.vm ]
}
module "azurerm_NIC" {
    depends_on = [ module.rg,module.subnet,module.azurerm_pip,module.nsg ]
    source = "../../modules/Azurerm-network_interface_card"
    for_each = var.todo_nic
    nics = each.value
  
}
module "azurerm_pip" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm_PIP"
    for_each = var.todo_pip
    pips = each.value
  
}