output "vm1_public_ip"{
    value = module.vm1.vm_ip
}

output "vm2_public_ip"{
    value = module.vm2.*.vm_ip
}


output "storage_account_name" {
    value = azurerm_storage_account.example.name
}