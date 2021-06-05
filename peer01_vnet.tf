# Create a Virtual Network Peering01
resource "azurerm_virtual_network" "vn_peer01" {
  name                = var.virtual_network_p01
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}