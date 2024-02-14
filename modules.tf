
module "dev" {
    source = "./New folder2"
    
    azurerm_resource_group_name = "devrg"
    location = "eastus"
    azurerm_virtual_network_name = "devvnet"
    address_space = ["10.0.0.0/16"]
    azurerm_subnet01 = "devsubnet01"
    address_prefixes = ["10.0.1.0/24"]
    azurerm_subnet02 = "devsubnet02"
    address_prefixes01 = ["10.0.2.0/24"]
    azurerm_subnet03 = "devsubnet03"
    address_prefixes02 = ["10.0.3.0/24"]
    azurerm_network_security_group = "devnsg"
    azurerm_network_security_group_nnn = "nsgname"
    priority = 100
    access = "Allow"
    direction = "Inbound"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "*"
    source_address_prefix = "*"
    destination_address_prefix = "*"

}
module "QA" {
    source = "./New folder2"
        
    azurerm_resource_group_name = "QArg"
    location = "eastus"
    azurerm_virtual_network_name = "QAvnet"
    address_space = ["10.0.0.0/16"]
    azurerm_subnet01 = "devsubnet01"
    address_prefixes = ["10.0.1.0/24"]
    azurerm_subnet02 = "devsubnet02"
    address_prefixes01 = ["10.0.2.0/24"]
    azurerm_subnet03 = "devsubnet03"
    address_prefixes02 = ["10.0.3.0/24"]
    azurerm_network_security_group = "QAnsg"
    azurerm_network_security_group_nnn = "nsgname"
    priority = 100
    access = "Allow"
    direction = "Inbound"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "*"
    source_address_prefix = "*"
    destination_address_prefix = "*"

}
  module "UAT" {
    source = "./New folder2"

        
    azurerm_resource_group_name = "UATrg"
    location = "eastus"
    azurerm_virtual_network_name = "UATvnet"
    address_space = ["10.0.0.0/16"]
    azurerm_subnet01 = "devsubnet01"
    address_prefixes = ["10.0.1.0/24"]
    azurerm_subnet02 = "devsubnet02"
    address_prefixes01 = ["10.0.2.0/24"]
    azurerm_subnet03 = "devsubnet03"
    address_prefixes02 = ["10.0.3.0/24"]
    azurerm_network_security_group = "UATnsg"
    azurerm_network_security_group_nnn = "nsgname"
    priority = 100
    access = "Allow"
    direction = "Inbound"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "*"
    source_address_prefix = "*"
    destination_address_prefix = "*"

}
    
  module "prod" {
    source = "./New folder2"

        
    azurerm_resource_group_name = "prodvrg"
    location = "eastus"
    azurerm_virtual_network_name = "prodvnet"
    address_space = ["10.0.0.0/16"]
    azurerm_subnet01 = "devsubnet01"
    address_prefixes = ["10.0.1.0/24"]
    azurerm_subnet02 = "devsubnet02"
    address_prefixes01 = ["10.0.2.0/24"]
    azurerm_subnet03 = "devsubnet03"
    address_prefixes02 = ["10.0.3.0/24"]
    azurerm_network_security_group = "prodnsg"
    azurerm_network_security_group_nnn = "nsgname"
    priority = 100
    access = "Allow"
    direction = "Inbound"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "*"
    source_address_prefix = "*"
    destination_address_prefix = "*"

}
    
  
    