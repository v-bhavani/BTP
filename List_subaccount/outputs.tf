output "subaccount_ids" {
  value = [for sa in data.btp_subaccounts.all.values : sa.id]
}

output "subaccount_names" {
  value = [for sa in data.btp_subaccounts.all.values : sa.name]
}
