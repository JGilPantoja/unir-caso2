resource "azurerm_linux_virtual_machine" "vm" {
  name                  = "webserver-vm"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  size                  = "Standard_B2s"
  admin_username        = "azureuser"
  network_interface_ids = [azurerm_network_interface.nic.id]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy-daily"
    sku       = "22_04-daily-lts-gen2"
    version   = "latest"
  }
  admin_ssh_key {
    username   = "azureuser"
    public_key = file("/Users/javi/Downloads/unir/id_rsa.pub")
  }
}



