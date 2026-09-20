output "resource_group_name" {
  description = "AKS resource group"
  value       = azurerm_resource_group.aks.name
}

output "aks_cluster_name" {
  description = "AKS cluster name"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_kubernetes_version" {
  description = "Kubernetes version selected by Azure"
  value       = azurerm_kubernetes_cluster.aks.kubernetes_version
}

output "aks_oidc_issuer_url" {
  description = "AKS OIDC issuer URL"
  value       = azurerm_kubernetes_cluster.aks.oidc_issuer_url
}