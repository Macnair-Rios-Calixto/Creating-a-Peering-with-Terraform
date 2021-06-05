# Create a Subnet
resource "azurerm_subnet" "sub_peer02" {
  name                 = var.subnet_p02
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vn_peer02.name
  address_prefixes     = ["192.168.1.0/24"]
}