# Create a Peering01
resource "azurerm_virtual_network_peering" "peering01" {
  name                         = var.peering01
  resource_group_name          = azurerm_resource_group.rg.name
  virtual_network_name         = azurerm_virtual_network.vn_peer01.name
  remote_virtual_network_id    = azurerm_virtual_network.vn_peer02.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = false
  allow_gateway_transit        = false
}