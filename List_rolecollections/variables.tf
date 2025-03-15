variable "globalaccount" {
  description = "BTP global account"
  type        = string
  sensitive   = true
}

variable "username" {
  description = "BTP username"
  type        = string
  sensitive   = true
}

variable "password" {
  description = "BTP user password"
  type        = string
  sensitive   = true
}