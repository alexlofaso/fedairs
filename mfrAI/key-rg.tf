resource "azurerm_resource_group" "keyrg" {
  name     = "${local.prefix}-${local.key_resource_group_name}"
  location = local.location

  tags = local.tags
}
