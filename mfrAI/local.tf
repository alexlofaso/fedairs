locals {
    location = "EastUS"
    prefix = "mfrai"

    aisvc_resource_group_name = "aisvc-rg"
    app_resource_group_name = "app-rg"
    data_resource_group_name = "data-rg"

    tags = {
    "FISMA_Id"      = "MFRAI"
    "TerraformRepo" = "SomePath"
  }
}