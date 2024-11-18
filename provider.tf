terraform {
  required_version = ">=1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.5.0"
    }
  }
  backend "remote" {
    organization = "AzureCraft"

    workspaces {
      name = "dev"
    }
  }
}

provider "azurerm" {
  features {

  }
  # client_id       = var.AZURE_CLIENT_ID
  # tenant_id       = var.AZURE_TENANT_ID
  # subscription_id = var.AZURE_SUBSCRIPTION_ID
  # client_secret   = var.AZURE_CLIENT_SECRET
  subscription_id = var.ARM_SUBSCRIPTION_ID
}