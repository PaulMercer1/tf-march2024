output "vm_public_ip"{
    value = azurerm_public_ip.example.ip_address
}

output "storage_account_name" {
    value = azurerm_storage_account.example.name
}