resource "azurerm_resource_group" "netrg" {
  name     = "${local.prefix}-${local.net_resource_group_name}"
  location = local.location

  tags = local.tags
}
