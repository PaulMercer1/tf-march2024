variable "vm_size" {
    type    =   string
}

variable "vm_disk_size" {
    type    =   number
    description = "Enter the disk size in GB"
    validation {
     condition = var.vm_disk_size >= 30
     error_message = "Must be at least 30GB"
    }
}

variable "vnet_addresses" {
    type    =   list(string)
}

variable "sn_addresses" {
    type    =   list(string)
}
