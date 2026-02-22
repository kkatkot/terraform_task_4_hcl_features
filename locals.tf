variable "prefix" {
  default = "tfvmex"
}

variable "security_rules" {
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}

variable "nic_names" {
  default = ["nic1", "nic2"]
}

variable "vm_password" {
  default   = "Password1234!"
  sensitive = true
}