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

data "btp_subaccount_role_collections" "all" {
  subaccount_id = "5ec57e8d-be52-47c3-8274-7cc86ef51f4f"
}

