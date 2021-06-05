# Create a public IP VM01 
resource "azurerm_public_ip" "pip_vm01" {
  name                = var.pip_vm01
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  allocation_method   = "Static"
  sku                 = "Basic"
}