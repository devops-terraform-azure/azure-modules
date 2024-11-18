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
  client_id       = var.TF_VARS_client_id
  tenant_id       = var.TF_VARS_tenant_id
  subscription_id = var.TF_VARS_subscription_id
  client_secret   = var.TF_VARS_client_secret
}