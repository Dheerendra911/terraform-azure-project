rg_todo = {
  rg1 = {
    name     = "dev-rg11"
    location = "Central India"
  }
  rg2 = {
    name     = "dev-rg12"
    location = "Central India"
  }
}

vnet_todo = {
  vnet1 = {
    name                = "dev-vnet11"
    location            = "Central India"
    resource_group_name = "dev-rg11"
    address_space       = ["10.0.0.0/16"]
  }
  vnet2 = {
    name                = "dev-vnet12"
    location            = "Central India"
    resource_group_name = "dev-rg12"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet_todo = {
  subnet1 = {
    name                 = "dev-subnet11"
    virtual_network_name = "dev-vnet11"
    resource_group_name  = "dev-rg11"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "dev-subnet12"
    virtual_network_name = "dev-vnet12"
    resource_group_name  = "dev-rg12"
    address_prefixes     = ["10.0.1.0/26"]
  }
}

nsg_todo = {
  nsg1 = {
    name                = "dev-nsg"
    location            = "Central India"
    resource_group_name = "dev-rg11"
  }
  nsg2 = {
    name                = "dev-nsg1"
    location            = "Central India"
    resource_group_name = "dev-rg12"
  }
}

vm_todo = {
  vm1 = {
    name                = "dev-vm1"
    location            = "Central India"
    resource_group_name = "dev-rg11"
    size                = "Standard_B1s"
    admin_username      = "patelji"

  }
  vm2 = {
    name                = "dev-vm2"
    location            = "Central India"
    resource_group_name = "dev-rg12"
    size                = "Standard_B1s"
    admin_username      = "patelji"

  }
}

todo_asg = {
  assoc1 = {
    dnicname            = "devnic1"
    dname               = "devnsg"
    resource_group_name = "dev-rg11"
  }
  assoc2 = {
    dnicname            = "devnic2"
    dname               = "devnsg"
    resource_group_name = "dev-rg12"
  }
}
todo_nic = {
  nic1 = {
    dname                = "frontend"
    virtual_network_name = "dev-vnet11"
    resource_group_name  = "dev-rg11"
    pipname              = "frontendpip"
    name                 = "Frontendnic"
    location             = "central india"

  }
  nic2 = {
    dname                = "backend"
    virtual_network_name = "dev-vnet12"
    resource_group_name  = "dev-rg12"
    pipname              = "backendpip"
    name                 = "backendnic"
    location             = "central india"

  }
}
todo_pip = {
  pip1 = {
    pipname             = "frontendpip"
    resource_group_name = "dev-rg11"
    location            = "central india"
  }
  pip2 = {
    pipname             = "backendpip"
    resource_group_name = "dev-rg12"
    location            = "central india"
  }
}
