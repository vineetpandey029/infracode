module "rg" {
  source = "../../module/rg"
  rgs    = var.rgs
}

module "pip" {
  source     = "../../module/pip"
  depends_on = [module.rg]
  pip        = var.pip
}

module "vnet" {
  source     = "../../module/vnetandsubnet"
  depends_on = [module.rg]
  vnet       = var.vnet
}

module "vm" {
  source     = "../../module/vm"
  depends_on = [module.rg, module.pip, module.vnet]
  vms        = var.vms
}

module "sqlserver" {
  source     = "../../module/azurerm_sql_server"
  depends_on = [module.rg]
  sqlserver  = var.sqlserver
}

module "sqldatbase" {
  source      = "../../module/azurerm_sql_database"
  depends_on  = [module.sqlserver]
  sqldatabase = var.sqldatabase
}
module "keyvault" {
  source = "../../module/keyvault"
  depends_on = [ module.rg ]
  kv = var.kv
  
}