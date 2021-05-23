
/*
Assign sensitive variables in the command line
#================================================================================================================================
The best practice for assigning sensitive variables is to make sure your usernames and passwords are secure.
If you do not assign a value to your admin_username or admin_password variables, Terraform will prompt you each time you run a 
state-changing operation. To avoid being prompted for each variable, use the -var flag to assign sensitive values to your variables.
Run your apply job with the -var flag to assign values to your admin_username and admin_password variables.
$ terraform apply -var 'admin_username=plankton' -var 'admin_password=Password1234!'
Warning: Never commit passwords, certificates, connection strings, etc. in version control. When checking in your Terraform 
configurations to VCS, remove the sensitive strings before committing.
#================================================================================================================================
*/
