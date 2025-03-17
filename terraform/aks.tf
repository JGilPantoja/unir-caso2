resource "azurerm_kubernetes_cluster" "aks" {
  name                = "casopractico2-aks"
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version  = "1.30.9"
  dns_prefix          = "casopractico2"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_role_assignment" "ra-perm" {
  principal_id         = azurerm_kubernetes_cluster.aks.identity[0].principal_id
  role_definition_name = "AcrPull"
  scope                = azurerm_container_registry.acr.id

  depends_on = [
    azurerm_kubernetes_cluster.aks,
    azurerm_container_registry.acr
  ]
}

