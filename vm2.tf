module "vm2" {
  source = "./vm"
  vm_name = "vm2-${count.index}"
  disk_size = 35
  location = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  subnet_id = azurerm_subnet.example.id
  ssh_public_key = file("./admin.pub")

  count = 5
}