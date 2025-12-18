variable "sqldatabase" {
  type = map(object({
    db_name      = string
    collation    = string
    license_type = string
    max_size_gb  = number
    sku_name     = string
    enclave_type = string
    server_name  = string
    rg_name      = string
  }))
}
