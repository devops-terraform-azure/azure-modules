module "linux_web_app" {
  source                        = "git::https://github.com/devops-terraform-azure/iac-modules.git//app-service/linux?ref=main"
  staging_slot_enabled          = true
  app_service_name              = module.app_service_plan.service_plan_name
  service_plan_id               = module.app_service_plan.service_plan_id
  location                      = module.rg.resource_group_location
  resource_group_name           = module.rg.resource_group_name
  public_network_access_enabled = true
  tags = {
    "name" = "devsecops"
  }

  site_config = {
    application_stack = {
      node_version = "20-lts"
    }

    http2_enabled = true
  }

  authorized_ips = ["0.0.0.0/0"]
}

module "app_service_plan" {
  source              = "git::https://github.com/devops-terraform-azure/iac-modules.git//app-service-plan?ref=main"
  appservice_name     = "asp-devsecops"
  resource_group_name = module.rg.resource_group_name
  location            = module.rg.resource_group_location
  os_type             = "Linux"
  sku_name            = "S1"
  tags = {
    "name" = "devsecops"
  }
}

module "rg" {
  source              = "git::https://github.com/devops-terraform-azure/iac-modules.git//resource-group?ref=main"
  resource_group_name = "rg-devsecops-001"
  location            = "centralus"
  tags = {
    "name" = "devsecops"
  }
}