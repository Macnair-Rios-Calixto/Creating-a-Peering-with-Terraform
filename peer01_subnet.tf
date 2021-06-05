# Create a Subnet 
resource "azurerm_subnet" "sub_peer01" {
  name                 = var.subnet_p01
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vn_peer01.name
  address_prefixes     = ["10.0.1.0/24"]
}