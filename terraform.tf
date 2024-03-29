terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "3.92.0"
        }
    }

backend "azurerm" {
    storage_account_name = "allofasotfstate"
    container_name = "askai"
    key = "Fedairs/terraform.tfstate"
    }
}