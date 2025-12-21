variable "sql_database" {
  type = map(object({
    sql_database_name = string
    collation = string
    license_type = string
    max_size_gb = string
    sku_name = string
    sql_server_name = string
    rg_name = string
  }))
}