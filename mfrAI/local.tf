locals {
    location = "EastUS"
    prefix = "mfrai"

    aisvc_resource_group_name = "aisvc-rg"
    app_resource_group_name = "app-rg"
    data_resource_group_name = "data-rg"
    key_resource_group_name = "key-rg"
    monitoring_resource_group_name = "monitoring-rg"
    net_resource_group_name = "net-rg"
    virtual_network_address_space = ["10.0.0.0/16"]

    tags = {
    "FISMA_Id"      = "MFRAI"
    "TerraformRepo" = "SomePath"
  }
}