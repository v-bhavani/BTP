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
variable "managers" {
  type        = list(string)
  description = "Defines the managers of the Space"
}
variable "billing_managers" {
  type        = list(string)
  description = "Defines the billing_managers of the Space"
}
variable "auditors" {
  type        = list(string)
  description = "Defines the email address of the auditors for the Space"
}
variable "sp_managers" {
  type        = list(string)
  description = "Defines the managers of the Space"
}
variable "sp_developer" {
  type        = list(string)
  description = "Defines the billing_managers of the Space"
}
variable "globalaccount" {
  description = "BTP global account"
  type        = string
  sensitive   = true
}