variable "rg_name" {

  type        = string
  description = "Resource group name"

}

variable "Storage_acc" {
  type        = string
  description = "Storage account name"

}


variable "tags" {
  type        = map(string)
  description = "Tags"
}


variable "vnet_name" {
  type        = string
  description = "Virtual Network Name"

}

variable "vnet_subnet1_name" {

  type        = string
  description = "Virtual Network Subnet 1 name"

}

variable "vnet_subnet2_name" {

  type        = string
  description = "Virtual Network Subnet 2 name"

}
