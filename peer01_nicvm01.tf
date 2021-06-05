# Create a Virtual Network Interface VM01 
resource "azurerm_network_interface" "nic_vm01" {
  name                = var.network_interface_vm01
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.sub_peer01.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip_vm01.id
  }
}