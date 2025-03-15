output "subaccount_role_collection_names" {
  value = [for rc in data.btp_subaccount_role_collections.all.values : rc.name]
}
