# variable "subscription_id" {
#   type        = string
#   description = "The subscription ID to be scanned"
#   default     = null
# }

variable "location" {
  type    = string
  default = "East US"
}

variable "environment" {
  default     = "poc"
  description = "Must be all lowercase letters or numbers"
}