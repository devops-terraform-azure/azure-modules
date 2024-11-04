output "app_service_name" {
  description = "Name of the App Service"
  value       = module.linux_web_app.app_service_name
}

output "app_service_default_site_hostname" {
  description = "The Default Hostname associated with the App Service"
  value       = module.linux_web_app.app_service_default_site_hostname
}

output "app_service_slot_name" {
  description = "Name of the App Service slot"
  value       = module.linux_web_app.app_service_slot_name
}

output "resource_group_name" {
  description = "The Resource Group Name"
  value       = module.rg.resource_group_name
}
