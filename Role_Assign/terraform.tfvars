subaccount_id = "${tfsuboutputs.subaccount_id.value}"
globalaccount = "$var.globalaccount"
username = "$var.username"
password = "$var.password"
role =  "$var.role"
users = [${var.subaccount_users}] 
identity_provider   = "$var.identityprovider"
