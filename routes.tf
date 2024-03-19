
resource "azurerm_route_table" "example" {
  name                          = "example-route-table"
  location                      = azurerm_resource_group.example.location
  resource_group_name           = azurerm_resource_group.example.name
  disable_bgp_route_propagation = false

  route {
    name           = "route1"
    address_prefix = var.sn_addresses[0]
    next_hop_type  = "VnetLocal"
  }

  tags = {
    environment = "Production"
  }
}

resource "azurerm_subnet_route_table_association" "example" {
  subnet_id      = azurerm_subnet.example.id
  route_table_id = azurerm_route_table.example.id
}
