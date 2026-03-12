variable "Rg" {
  type = map(object({
    name                = string
     location            = string
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
