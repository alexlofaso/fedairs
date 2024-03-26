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

resource "azurerm_private_dns_zone" "example" {
  name                = "myrai.com"
  resource_group_name = azurerm_resource_group.netrg.name
}

