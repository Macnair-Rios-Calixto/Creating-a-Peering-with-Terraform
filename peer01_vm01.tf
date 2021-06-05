# Create a VM01 
resource "azurerm_windows_virtual_machine" "vm01" {
  name                  = var.vm01
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg.name
  size                  = "Standard_B1s"
  admin_username        = "admin.macnair"
  admin_password        = "P@ssw0rd2021"
  computer_name         = "VM01"
  network_interface_ids = [azurerm_network_interface.nic_vm01.id]

  os_disk {
    name                 = "vm01-osdisk"
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