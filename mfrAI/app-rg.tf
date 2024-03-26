resource "azurerm_resource_group" "apprg" {
  name     = "${local.prefix}-${local.app_resource_group_name_resource_group_name}"
  location = local.location

  tags = local.tags
}
