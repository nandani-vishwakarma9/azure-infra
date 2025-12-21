variable "storage_account" {
  type = map(object({
    name                     = string
    rg_name                  = string
    location                 = string
    account_replication_type = string
  }))
}