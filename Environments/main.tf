module "rg" {
  source = "../Module/RG"
  rg     = var.rg
}

 module "aks" {
   depends_on = [module.rg]
  source     = "../Module/AKS"
   aks        = var.aks
   }
 module "acr" {
  depends_on = [module.aks]
  source     = "../Module/ACR"
  acr        = var.acr
}  