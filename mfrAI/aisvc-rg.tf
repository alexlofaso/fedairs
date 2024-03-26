resource "azurerm_resource_group" "aisvcrg" {
  name     = "${local.prefix}-${local.aisvc_resource_group_name}"
  location = local.location

  tags = local.tags
}
