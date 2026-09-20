variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
  default     = "rg-aks-gitops-demo"
}

variable "location" {
  description = "azure region"
  type        = string
  default     = "East US"
}

variable "aks_cluster_name" {
  description = "AKS Cluster Name"
  type        = string
  default     = "aks-gitops-demo"
}

variable "dns_prefix" {
  description = "AKS dn prefix"
  type        = string
  default     = "aks-gitops-demo-dns"
}

variable "node_vm_size" {
  description = "node_vm_size"
  type        = string
  default     = "Standard_D2as_v7"
}

variable "node_count" {
  description = "node_count"
  type        = number
  default     = 1
}