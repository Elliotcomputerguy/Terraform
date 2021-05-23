

/*
# =================================================================================================================
# Azure
https://learn.hashicorp.com/tutorials/terraform/azure-remote?in=terraform/azure-get-started
[1] create backend block in tf code
[2] login to tf cloud : terraform login
[3] login to az with az login
[4] get az subscription with az account list
[5] create a service principal account. 
az ad sp create-for-rbac --role="Contributor" --scope="/subscriptions/subid"                
[6] create env variables
ARM_SUBSCRIPTION_ID 	SUBSCRIPTION_ID from the last command's input. (Sensitive)
ARM_CLIENT_ID 	        appID from the last command's output. (Sensitive)
ARM_CLIENT_SECRET	password from the last command's output. (Sensitive)
ARM_TENANT_ID	        tenant from the last command's output. (Sensitive)
[7] run terraform init to initilize backend state file
[8] run terraform plan and apply
# =================================================================================================================
# AWS
https://learn.hashicorp.com/tutorials/terraform/aws-remote?in=terraform/aws-get-started
[1] create backend block in tf code
[2] login to tf cloud : terraform login
[3] https://console.aws.amazon.com/iam/home?#/security_credentials 
[4] create env vars

AWS_ACCESS_KEY_ID (sensitive)
AWS_SECRET_ACCESS_KEY (sensitive)
[5] run terraform init to initilize backend state file
[6] run terraform plan and apply

*/

terraform {
 backend "remote" {
   organization = "<ORG_NAME>"
   workspaces {
     name = "Example-Workspace"
   }
 }
}