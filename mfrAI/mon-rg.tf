resource "azurerm_resource_group" "monrg" {
  name     = "${local.prefix}-${local.monitoring_resource_group_name}"
  location = local.location

  tags = local.tags
}
