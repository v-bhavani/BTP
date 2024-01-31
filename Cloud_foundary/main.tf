# ------------------------------------------------------------------------------------------------------
# Define the required providers for this module
# ------------------------------------------------------------------------------------------------------
terraform {
  required_providers {
    btp = {
      source  = "sap/btp"
      version = "1.0.0-rc2"
    }
    cloudfoundry = {
      source  = "cloudfoundry-community/cloudfoundry"
      version = "0.53.0"
    }
  }
}
 
provider "btp" {
  globalaccount = var.globalaccount
  username      = var.username
  password      = var.password
}
 
provider "cloudfoundry" {
    api_url = "https://api.cf.${var.region}-001.hana.ondemand.com"
    user = var.username
    password = var.password
}
 
# ------------------------------------------------------------------------------------------------------
# Create the Cloud Foundry environment instance
# ------------------------------------------------------------------------------------------------------
resource "btp_subaccount_environment_instance" "cf" {
  subaccount_id    = var.subaccount_id
  name             = var.cf_name
  environment_type = "cloudfoundry"
  service_name     = "cloudfoundry"
  plan_name        = var.plan_name
  parameters = jsonencode({
    instance_name = var.cf_name
  })
}
 
# ------------------------------------------------------------------------------------------------------
# Create the Cloud Foundry space
# ------------------------------------------------------------------------------------------------------
resource "cloudfoundry_space" "space" {
  name = var.space_name
  org  = btp_subaccount_environment_instance.cf.platform_id
}
 
# ------------------------------------------------------------------------------------------------------
# Create the CF users
# ------------------------------------------------------------------------------------------------------
resource "cloudfoundry_space_users" "space-users" {
  space      = cloudfoundry_space.space.id
  managers   = var.user
 developers = var.user
 auditors   = var.user
}
