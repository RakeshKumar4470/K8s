resource "azurerm_kubernetes_cluster" "aks" {
  for_each            = var.aks
  name                = each.value.aks_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  dns_prefix          = each.value.dns_prefix

  default_node_pool {
    name                = each.value.node_name
    node_count          = each.value.node_count
    vm_size             = each.value.vm_size
     }

  network_profile {
    network_plugin = "azure"
    network_policy = "calico"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "dev"
  }
}