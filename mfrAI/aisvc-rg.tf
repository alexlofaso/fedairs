resource "azurerm_resource_group" "aisvcrg" {
  name     = "${local.prefix}-${local.aisvc_resource_group_name}"
  location = local.location

  tags = local.tags
}

module "cognitive_account_openai" {
  source = "./_modules/CognitiveAccount"

  location            = azurerm_resource_group.aisvcrg.location
  resource_group_name = azurerm_resource_group.aisvcrg.name

  custom_subdomain_name = "infoasst-aoai-${local.rando}" 
  kind                  = "OpenAI"
  name                  = "infoasst-aoai-${local.rando}"
  private_dns_zone_ids  = [azurerm_private_dns_zone.example.id]
  sku_name              = "S0"
  subnet_id             = "${azurerm_virtual_network.mfr-network.id}/subnets/${local.prefix}-aisvc-sn"
  tags                  = local.tags
}

module "cognitive_account_form_recognizer" {
  source = "./_modules/CognitiveAccount"

  location            = azurerm_resource_group.aisvcrg.location
  resource_group_name = azurerm_resource_group.aisvcrg.name

  custom_subdomain_name = "infoasst-fr-${local.rando}"
  kind                  = "FormRecognizer"
  name                  = "infoasst-fr-${local.rando}"
  private_dns_zone_ids  = [azurerm_private_dns_zone.example.id]
  sku_name              = "S0"
  subnet_id             = "${azurerm_virtual_network.mfr-network.id}/subnets/${local.prefix}-aisvc-sn"
  tags                  = local.tags
}

module "cognitive_account_enrichment" {
  source = "./_modules/CognitiveAccount"

  location            = azurerm_resource_group.aisvcrg.location
  resource_group_name = azurerm_resource_group.aisvcrg.name

  custom_subdomain_name = "infoasst-enrichment-cog-${local.rando}" 
  kind                 = "CognitiveServices"
  name                 = "infoasst-enrichment-cog-${local.rando}"
  private_dns_zone_ids = [azurerm_private_dns_zone.example.id]
  sku_name             = "S0"
  subnet_id            = "${azurerm_virtual_network.mfr-network.id}/subnets/${local.prefix}-aisvc-sn"
  tags                 = local.tags
}
