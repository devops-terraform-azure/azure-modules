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
  client_id       = var.TF_VARS_CLIENT_ID
  tenant_id       = var.TF_VARS_TENANT_ID
  subscription_id = var.TF_VARS_SUBSCRIPTION_ID
  client_secret   = var.TF_VARS_CLIENT_SECRET
}