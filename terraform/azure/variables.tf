variable "location" {
  type    = string
  default = "East US"
}

variable "environment" {
  default     = "bridgecrew-poc"
  description = "Must be all lowercase letters or numbers"
}