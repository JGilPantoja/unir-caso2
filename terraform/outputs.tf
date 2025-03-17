output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "acr_admin_username" {
  value     = azurerm_container_registry.acr.admin_username
  sensitive = true
}

output "acr_admin_password" {
  value     = azurerm_container_registry.acr.admin_password
  sensitive = true
}

output "vm_public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}

output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "kubernetes_cluster_api_url" {
  value     = azurerm_kubernetes_cluster.aks.kube_config.0.host
  sensitive = true
}
