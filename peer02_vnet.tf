# Create a Virtual Network Peering02
resource "azurerm_virtual_network" "vn_peer02" {
  name                = var.virtual_network_p02
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["192.168.0.0/16"]
}