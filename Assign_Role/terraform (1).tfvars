subaccount_id = "${tfoutputsub.directory_id.value}"
globalaccount = "$var.globalaccount"
username = "$var.username"
password = "$var.password"
role =  "$var.role"
users = [${var.subaccount_users}] 
identity_provider   = "$var.identityprovider"
