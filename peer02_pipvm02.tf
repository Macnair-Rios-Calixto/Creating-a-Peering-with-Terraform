# Create a public IP VM02
resource "azurerm_public_ip" "pip_vm02" {
  name                = var.pip_vm02
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  allocation_method   = "Static"
  sku                 = "Basic"
}