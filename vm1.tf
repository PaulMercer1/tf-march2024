module "vm1" {
  source = "http://dev.azure.com/project/repo?ref="
  vm_name = "vm1"
  location = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  subnet_id = azurerm_subnet.example.id
  ssh_public_key = file("./admin.pub")
}