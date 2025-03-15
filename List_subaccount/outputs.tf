output "subaccount_details" {
  value = { for sa in data.btp_subaccounts.all.values : sa.id => sa.name }
}
