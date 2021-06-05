# Create a Variables
variable "resource_group_name" {
  type        = string
  description = "resource grouop name"
  default     = "RG-Terraform"
}

variable "location" {
  type        = string
  description = "location name"
  default     = "eastus2"
}

variable "virtual_network_p01" {
  type        = string
  description = "Virtual Network Name"
  default     = "Vnet-P01"
}

variable "subnet_p01" {
  type        = string
  description = "Subnet do Peering 01"
  default     = "Sub-Peering"
}

variable "peering01" {
  type        = string
  description = "Peering01"
  default     = "Peering01"
}

variable "network_interface_vm01" {
  type        = string
  description = "Network Interface"
  default     = "nic-vm01"
}

variable "pip_vm01" {
  type        = string
  description = "Ip publico da VM0l"
  default     = "Pip-VM01"
}

variable "vm01" {
  type        = string
  description = "Virtual Machine VM01"
  default     = "VM01"
}

variable "virtual_network_p02" {
  type        = string
  description = "Virtual Network Name"
  default     = "Vnet-P02"
}

variable "subnet_p02" {
  type        = string
  description = "Subnet do Peering 02"
  default     = "Sub-Peering"
}

variable "peering02" {
  type        = string
  description = "Peering02"
  default     = "Peering02"
}

variable "network_interface_vm02" {
  type        = string
  description = "Network Interface"
  default     = "nic-vm02"
}

variable "pip_vm02" {
  type        = string
  description = "Ip publico da VM02"
  default     = "Pip-VM02"
}

variable "vm02" {
  type        = string
  description = "Virtual Machine VM02"
  default     = "VM02"
}



