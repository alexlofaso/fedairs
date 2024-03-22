terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.96.0"
    }
  }

  backend "azurerm" {
    storage_account_name = "allofasotfstate"
    container_name = "askai"
    key = "Fedairs/askai/terraform.tfstate"
    }
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}