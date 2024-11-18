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
  features {}
  subscription_id = ""
}