module "StorageAccount" {
  source = "./_modules/StorageAccount"

  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  name                     = "infoasststoregeprk"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  private_dns_zone_ids     = [azurerm_private_dns_zone.example.id]
  subnet_id                = "${azurerm_virtual_network.example.id}/subnets/subnet1"
  tags                     = local.tags
}

resource "azurerm_storage_container" "content" {
  name                  = "content"
  storage_account_name  = module.StorageAccount.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "logs" {
  name                  = "logs"
  storage_account_name  = module.StorageAccount.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "function" {
  name                  = "function"
  storage_account_name  = module.StorageAccount.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "upload" {
  name                  = "upload"
  storage_account_name  = module.StorageAccount.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "website" {
  name                  = "website"
  storage_account_name  = module.StorageAccount.name
  container_access_type = "private"
}

resource "azurerm_storage_queue" "pdf_submit_queue" {
  name                 = "pdf-submit-queue"
  storage_account_name = module.StorageAccount.name
}

resource "azurerm_storage_queue" "pdf_polling_queue" {
  name                 = "pdf-polling-queue"
  storage_account_name = module.StorageAccount.name
}

resource "azurerm_storage_queue" "non_pdf_submit_queue" {
  name                 = "non-pdf-submit-queue"
  storage_account_name = module.StorageAccount.name
}

resource "azurerm_storage_queue" "media_submit_queue" {
  name                 = "media-submit-queue"
  storage_account_name = module.StorageAccount.name
}

resource "azurerm_storage_queue" "text_enrichment_queue" {
  name                 = "text-enrichment-queue"
  storage_account_name = module.StorageAccount.name
}

resource "azurerm_storage_queue" "image_enrichment_queue" {
  name                 = "image-enrichment-queue"
  storage_account_name = module.StorageAccount.name
}

resource "azurerm_storage_queue" "embeddings_queue" {
  name                 = "embeddings-queue"
  storage_account_name = module.StorageAccount.name
}

module "StorageAccountMedia" {
  source = "./_modules/StorageAccount"

  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  name                     = "infoasststoremediageprk"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  private_dns_zone_ids     = [azurerm_private_dns_zone.example.id]
  subnet_id                = "${azurerm_virtual_network.example.id}/subnets/subnet1"
  tags                     = local.tags
}

