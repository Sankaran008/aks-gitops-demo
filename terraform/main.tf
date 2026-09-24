resource "azurerm_resource_group" "aks" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = "Learning"
    Managedby   = "Terraform"
    Project     = "Aks-Gitops-Demo"
  }
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = var.dns_prefix

  sku_tier = "Free"

  default_node_pool {
    name            = "system"
    node_count      = var.node_count
    vm_size         = var.node_vm_size
    os_disk_size_gb = 30
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin      = "azure"
    network_plugin_mode = "overlay"
    load_balancer_sku   = "standard"
  }

  oidc_issuer_enabled       = true
  workload_identity_enabled = true

  tags = {
    Environment = "Learning"
    ManagedBy   = "Terraform"
    Project     = "AKS-GitOps-Demo"
  }
}