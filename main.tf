resource "azurerm_kubernetes_cluster" "tf-px-aks" {
  name                = "tf-px-aks"
  location            = "eastus"
  resource_group_name = "pixie-test"
  dns_prefix          = "tfakspx"

  default_node_pool {
    name       = "tfdefault"
    node_count = 1
    vm_size    = "Standard_B2ms"
  }

    identity {
      type = "SystemAssigned"
    }



}
