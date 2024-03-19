
resource "azurerm_network_interface" "example2" {
  name                = "example-nic2"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.example2.id
  }
}

resource "azurerm_linux_virtual_machine" "example2" {
  name                = "example-machine2"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  size                = var.vm_size

  admin_username      = "adminuser"
  admin_ssh_key {
    username   = "adminuser"
    public_key = file("admin.pub")
  }

  network_interface_ids = [
    azurerm_network_interface.example2.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    disk_size_gb         = var.vm_disk_size
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

   tags = {
    environment = "Production"
  }
}

resource "azurerm_public_ip" "example2" {
  name                = "publicIp2"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
