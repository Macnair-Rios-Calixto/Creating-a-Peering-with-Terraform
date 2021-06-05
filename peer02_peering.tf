# Create a Peering02
resource "azurerm_virtual_network_peering" "peering02" {
  name                         = var.peering02
  resource_group_name          = azurerm_resource_group.rg.name
  virtual_network_name         = azurerm_virtual_network.vn_peer02.name
  remote_virtual_network_id    = azurerm_virtual_network.vn_peer01.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = false
  allow_gateway_transit        = false
}