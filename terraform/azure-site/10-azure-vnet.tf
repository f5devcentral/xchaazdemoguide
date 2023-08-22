resource "azurerm_virtual_network" "vnet" {
  name                = "${var.environment}-network"
  address_space       = ["10.125.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet_a" {
  name                 = "subnet_a"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.125.10.0/24"]
}

resource "azurerm_subnet" "subnet_b" {
  name                 = "subnet_b"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.125.20.0/24"]
}

resource "azurerm_subnet" "subnet_c" {
  name                 = "subnet_c"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.125.30.0/24"]
}

output "azure_vnet_name" {
  description = "azure vnet name"
  value = azurerm_virtual_network.vnet.name
}

output "subnet_a_name" {
  description = "subnet_a name"
  value       = azurerm_subnet.subnet_a.name
}

output "subnet_b_name" {
  description = "subnet_b name"
  value       = azurerm_subnet.subnet_b.name
}

output "subnet_c_name" {
  description = "subnet_c name"
  value       = azurerm_subnet.subnet_c.name
}
