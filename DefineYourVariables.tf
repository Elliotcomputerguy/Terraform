

/*
 Define your Input Variables
#================================================================================================================================
Input variables ensure your configuration can be read, changed, and reused easily by declaring and defining variables 
that Terraform uses in your plan, apply, and destroy operations. Create a new file called variables.tf to hold all your variables.
#================================================================================================================================
*/
variable "location" {}

variable "prefix" {
  type    = string
  default = "my"
}

variable "tags" {
  type = map

  default = {
    Environment = "Terraform GS"
    Dept        = "Engineering"
  }
}

variable "sku" {
  default = {
    westus2 = "16.04-LTS"
    eastus  = "18.04-LTS"
  }
}