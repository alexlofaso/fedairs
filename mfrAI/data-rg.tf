resource "azurerm_resource_group" "datarg" {
  name     = "${local.prefix}-${local.data_resource_group_name}"
  location = local.location

  tags = local.tags
}
