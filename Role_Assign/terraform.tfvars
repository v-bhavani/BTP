#subaccount_id = "${tfoutputsub.subaccount_id.value}"
subaccount_id = "90cafb0a-d05b-4269-b6f5-0c2be1f6b13c"
global_account = "$var.globalaccount"
username = "$var.username"
password = "$var.password"
role =  "$var.role"
users = [${var.subaccount_users}] 
identity_provider   = "$var.identityprovider"
