variable "size" {
  type = string
  default = "Standard_B2s"
}

variable "disk_size" {
    type = number
    default = 30
}

variable "vm_name" {
  type = string
}

variable "location" {
    type = string
}

variable "resource_group_name" {
    type = string
}

variable "subnet_id" {
  
}

variable "ssh_public_key" {
  
}