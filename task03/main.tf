

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = "centralus"

  tags = var.tags

}


resource "azurerm_storage_account" "st" {
  account_replication_type = "GRS"
  account_tier             = "Standard"
  location                 = azurerm_resource_group.rg.location
  name                     = var.Storage_acc
  resource_group_name      = azurerm_resource_group.rg.name



  tags = var.tags


}



resource "azurerm_virtual_network" "vnet" {
  location            = azurerm_resource_group.rg.location
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]


  tags = var.tags


}



resource "azurerm_subnet" "subnet1" {

  name                 = var.vnet_subnet1_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.0.0/24"]


}




resource "azurerm_subnet" "subnet2" {

  name                 = var.vnet_subnet2_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name

  address_prefixes = ["10.0.1.0/24"]






}




