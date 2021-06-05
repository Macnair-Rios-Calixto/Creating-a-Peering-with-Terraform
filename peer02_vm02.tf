# Create a VM02 
resource "azurerm_windows_virtual_machine" "vm02" {
  name                  = var.vm02
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg.name
  size                  = "Standard_B1s"
  admin_username        = "admin.macnair"
  admin_password        = "P@ssw0rd2021"
  computer_name         = "VM02"
  network_interface_ids = [azurerm_network_interface.nic_vm02.id]

  os_disk {
    name                 = "vm02-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"

  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
} 