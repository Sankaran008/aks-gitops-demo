resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true

  wait    = true
  timeout = 600

  depends_on = [
    azurerm_kubernetes_cluster.aks
  ]
}