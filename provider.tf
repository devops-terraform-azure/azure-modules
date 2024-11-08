terraform {
  required_version = ">=1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.5.0"
    }
  }
  backend "remote" {
    organization = ""
    token        = ""

    workspaces {
      name = "dev"
    }
  }
}

provider "azurerm" {
  features {

  }
  client_id       = ""
  tenant_id       = ""
  subscription_id = ""
  client_secret   = ""
}