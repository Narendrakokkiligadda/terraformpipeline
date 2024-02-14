
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}


provider "azurerm" {
  features {}

  client_id       = "4dbcda03-b08d-4e22-8577-f1296a4c1170"
  client_secret   = "t2F8Q~LOl5AGrqR0yRiRpDv05Jo4B6hX_lOSea_F"
  tenant_id       = "e74a417b-ab67-48bd-921b-0fd6c5d2b1c2"
  subscription_id = "b98f53aa-1ec7-4951-b1fd-6ad6381b1ff0"
}
resource "azurerm_resource_group" "rg" {
  name     = var.azurerm_resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.azurerm_virtual_network_name
  location            = var.location
  resource_group_name = var.azurerm_resource_group_name
  address_space       = var.address_space
  depends_on = [azurerm_resource_group.rg]
  }

  resource "azurerm_subnet" "subnet01" {
  name                 = var.azurerm_subnet01
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network_name   
  address_prefixes     = var.address_prefixes
  depends_on = [azurerm_virtual_network.vnet]
}
 resource "azurerm_subnet" "subnet02" {
  name                 = var.azurerm_subnet02
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network_name   
  address_prefixes     = var.address_prefixes01
  depends_on = [azurerm_virtual_network.vnet]
}
 resource "azurerm_subnet" "subnet03" {
  name                 = var.azurerm_subnet03
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network_name   
  address_prefixes     = var.address_prefixes02
  depends_on = [azurerm_virtual_network.vnet]
}


resource "azurerm_network_security_group" "nsg" {
  name                = var.azurerm_network_security_group
  location            = var.location
  resource_group_name = var.azurerm_resource_group_name
  depends_on = [azurerm_resource_group.rg]
  

 security_rule {
    name                       = var.azurerm_network_security_group_nnn
    priority                   = var.priority
    direction                  = var.direction
    access                     = var.access
    protocol                   = var.protocol
    source_port_range          = var.source_port_range
    destination_port_range     = var.destination_port_range
    source_address_prefix      = var.source_address_prefix
    destination_address_prefix = var.destination_address_prefix
  }
}