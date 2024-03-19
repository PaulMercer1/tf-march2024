# VNet and Subnet configuration only.
# No NSG related config - use NSG.tf for that.

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = var.vnet_addresses
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = var.sn_addresses
}