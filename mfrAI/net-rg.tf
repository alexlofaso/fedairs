resource "azurerm_resource_group" "netrg" {
  name     = "${local.prefix}-${local.net_resource_group_name}"
  location = local.location

  tags = local.tags
}

resource "azurerm_virtual_network" "mfr-network" {
  name                = "${local.prefix}-vnet"
  location            = azurerm_resource_group.netrg.location
  resource_group_name = azurerm_resource_group.netrg.name
  address_space       = local.virtual_network_address_space
}

resource "azurerm_subnet" "web" {
  name  = "${local.prefix}-web-sn"
  resource_group_name = azurerm_resource_group.netrg.name
  virtual_network_name = azurerm_virtual_network.mfr-network.name
  address_prefixes = ["10.0.0.0/24"]
}

resource "azurerm_subnet" "aisvc" {
  name  = "${local.prefix}-aisvc-sn"
  resource_group_name = azurerm_resource_group.netrg.name
  virtual_network_name = azurerm_virtual_network.mfr-network.name
  address_prefixes = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "data" {
  name  = "${local.prefix}-data-sn"
  resource_group_name = azurerm_resource_group.netrg.name
  virtual_network_name = azurerm_virtual_network.mfr-network.name
  address_prefixes = ["10.0.2.0/24"]
}

resource "azurerm_subnet" "mgmt" {
  name  = "${local.prefix}-mgmt-sn"
  resource_group_name = azurerm_resource_group.netrg.name
  virtual_network_name = azurerm_virtual_network.mfr-network.name
  address_prefixes = ["10.0.3.0/24"]
}

resource "azurerm_subnet" "agwy" {
  name  = "${local.prefix}-agwy-sn"
  resource_group_name = azurerm_resource_group.netrg.name
  virtual_network_name = azurerm_virtual_network.mfr-network.name
  address_prefixes = ["10.0.4.0/24"]
}

resource "azurerm_network_security_group" "web" {
  name = "${local.prefix}-web-nsg"
  location = azurerm_resource_group.netrg.location
  resource_group_name = azurerm_resource_group.netrg.name
}

resource "azurerm_network_security_group" "aisvc" {
  name = "${local.prefix}-aisvc-nsg"
  location = azurerm_resource_group.netrg.location
  resource_group_name = azurerm_resource_group.netrg.name
}

resource "azurerm_network_security_group" "data" {
  name = "${local.prefix}-data-nsg"
  location = azurerm_resource_group.netrg.location
  resource_group_name = azurerm_resource_group.netrg.name
}

resource "azurerm_network_security_group" "mgmt" {
  name = "${local.prefix}-mgmt-nsg"
  location = azurerm_resource_group.netrg.location
  resource_group_name = azurerm_resource_group.netrg.name
}

resource "azurerm_network_security_group" "agwy" {
  name = "${local.prefix}-agwy-nsg"
  location = azurerm_resource_group.netrg.location
  resource_group_name = azurerm_resource_group.netrg.name
}

resource "azurerm_private_dns_zone" "example" {
  name                = "myrai.com"
  resource_group_name = azurerm_resource_group.netrg.name
}

