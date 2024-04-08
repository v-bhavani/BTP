terraform {
  required_providers {
    btp = {
      source  = "sap/btp"
      version = "1.2.0"
    }
    cloudfoundry = {
      source  = "cloudfoundry-community/cloudfoundry"
      version = "0.53.1"
    }
  }
}

provider "btp" {
  globalaccount = var.globalaccount
  username      = var.username
  password      = var.password
}

# ------------------------------------------------------------------------------------------------------
# Creation of Subaccount
# ------------------------------------------------------------------------------------------------------
resource "btp_subaccount" "subaccount" {
  name      = var.subaccount_name
  subdomain = replace(lower(replace(var.subaccount_name, "_", "-")), " ", "")
  region    = var.region
  parent_id = var.parent_directory
}
