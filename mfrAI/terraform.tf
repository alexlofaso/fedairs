terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.96.0"
    }
  }

  backend "azurerm" {
    storage_account_name = "allofasotfstate"
    container_name = "mfrai"
    key = "Fedairs/mfrai/terraform.tfstate"
    }
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}