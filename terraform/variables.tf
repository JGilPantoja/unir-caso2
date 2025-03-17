variable "location" {
  description = "Ubicación de los recursos en Azure"
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  default     = "casopractico2-rg"
}

variable "acr_name" {
  description = "Nombre del Azure Container Registry"
  default     = "casopractico2acr"
}

variable "vm_size" {
  description = "Tamaño de la máquina virtual"
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Usuario administrador de la VM"
  default     = "azureuser"
}

variable "kubernetes_cluster_name" {
  description = "Nombre del clúster AKS"
  default     = "casopractico2-aks"
}
