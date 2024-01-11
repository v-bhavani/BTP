# Output the Cloud Foundry environment instance details
output "cf_instance_details" {
  value = {
    id               = btp_subaccount_environment_instance.cf.id
    name             = btp_subaccount_environment_instance.cf.name
    subaccount_id    = btp_subaccount_environment_instance.cf.subaccount_id
    platform_id      = btp_subaccount_environment_instance.cf.platform_id
    environment_type = btp_subaccount_environment_instance.cf.environment_type
    service_name     = btp_subaccount_environment_instance.cf.service_name
    plan_name        = btp_subaccount_environment_instance.cf.plan_name
  }
}

# Output the Cloud Foundry org details
output "cf_org_details" {
  value = {
    org_id   = cloudfoundry_org_users.org_users.id
    org_name = cloudfoundry_org_users.org_users.name
  }
}

# Output the Cloud Foundry space details
output "cf_space_details" {
  value = {
    space_id   = cloudfoundry_space.space.id
    space_name = cloudfoundry_space.space.name
  }
}

