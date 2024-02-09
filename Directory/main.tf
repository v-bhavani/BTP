terraform {
  required_providers {
    btp = {
      source  = "sap/btp"
      version = "1.0.0-rc1"
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

# ------------------------------------------------------------------------------------------------------
# Creation of directory
# ------------------------------------------------------------------------------------------------------
resource "btp_directory" "parent" {
  name        = var.parent_directory
  labels      = { "architect" : ["${var.architect}"], "costcenter" : ["${var.costcenter}"], "owner" : ["${var.owner}"], "team" : ["${var.team}"] }
}
