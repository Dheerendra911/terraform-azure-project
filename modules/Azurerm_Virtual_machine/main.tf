

resource "azurerm_linux_virtual_machine" "todo_vm" {
  name                = var.vm.name
  location            = var.vm.location
  resource_group_name = var.vm.resource_group_name
  size                = var.vm.size
  admin_username      = var.vm.admin_username

  network_interface_ids = [data.azurerm_network_interface.nic_data.id]

  admin_password                  = "Password@1234"
  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}