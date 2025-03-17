output "subaccount_details_json" {
  value = [for sa in data.btp_subaccounts.all.values : {
    subaccount = sa.name
    id         = sa.id
  }]
}
