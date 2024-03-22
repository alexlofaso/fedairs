locals {
  location = "EastUS"

  resource_group_name              = "infoasst-nrcya-rg"
  search_service_name              = "infoasst-search-nrcya"
  web_app_name                     = "infoasst-web-nrcya"
  app_service_plan_web_name        = "infoasst-asp-nrcya"
  app_service_plan_enrichment_name = "infoasst-enrichmentasp-nrcya"
  web_enrichment_name              = "infoasst-enrichmentweb-nrcya"
  app_service_plan_function_name   = "infoasst-func-asp-nrcya"
  function_name                    = "infoasst-func-nrcya"
  log_analytics_name               = "infoasst-la-nrcya"
  application_insights_name        = "infoasst-ai-nrcya"
  app_service_environment_name     = "infoasst-asev3-nrcya"

  azure_client_id      = "3aff5d4e-1f13-4a7d-947e-612aae549f5d" # Russell's Tenant
  azure_management_url = "https://management.core.windows.net/"

  COSMOSDB_LOG_CONTAINER_NAME  = "statuscontainer"
  COSMOSDB_LOG_DATABASE_NAME   = "statusdb"
  COSMOSDB_TAGS_CONTAINER_NAME = "tagcontainer"
  COSMOSDB_TAGS_DATABASE_NAME  = "tagdb"

  AZURE_SEARCH_INDEX        = "vector-index"
  AZURE_FORM_RECOGNIZER_KEY = "AZURE-FORM-RECOGNIZER-KEY"
  AZURE_SEARCH_SERVICE_KEY  = "AZURE-SEARCH-SERVICE-KEY"


  tenant_auth_endpoint = "https://sts.windows.net/${data.azurerm_client_config.current.tenant_id}/v2.0"

  AZURE_BLOB_STORAGE_UPLOAD_CONTAINER = "upload"

  tags = {
    "FISMA_Id"      = "NRCYA"
    "TerraformRepo" = "SomePath"
  }

}