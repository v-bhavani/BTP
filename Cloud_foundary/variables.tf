variable "region" {
  type        = string
  description = "Region where the subaccount will be running."
}

variable "subaccount_id" {
  type        = string
  description = "ID of the Subaccount"
  default     = null
}
variable "username" {
  description = "BTP username"
  type        = string
  sensitive   = true
}
variable "user" {
  description = "BTP username"
  type        = string
  sensitive   = true
}
variable "password" {
  description = "BTP user password"
  type        = string
  sensitive   = true
}
variable "cf_name" {
  type        = string
  description = "Cloud Foundry Instance Name"
}
variable "space_name" {
  type        = string
  description = "Cloud Foundry space Name"
}
variable "plan_name" {
  type        = string
  description = "Cloud Foundry Instance Name"
}
variable "globalaccount" {
  description = "BTP global account"
  type        = string
  sensitive   = true
}
