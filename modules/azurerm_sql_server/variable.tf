variable "sql_server" {
  type = map(object({
    server_name = string
    rg_name = string
    location = string
    version_number = string 
    kv_name = string
    admin_username = string
    admin_password = string
    kv_rg_name = string
  }))
}
