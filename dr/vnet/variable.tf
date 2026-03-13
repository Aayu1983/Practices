variable "Vnet" {
  type = map(object({
    name                = string
    location            = string
    address_space       = list(string)
    resource_group_name = string
  }))
}
variable "main_subscription_id" {
  type        = string
  description = "Subscription ID of Resources deployment"
}

variable "storage_subscription_id" {
  type        = string
  description = "Subscription ID of Storage Account"
}
