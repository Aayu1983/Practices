variable "Rg" {
  type = map(object({
    name                = string
     location            = string
  }))
}
variable "subscription_id" {
  type = string
}