
/*
step [1] create a working terraform directory. 
step [2] create a terraform file.tf with code.
step [3] run terraform init to initialize the working directory.
step [4] run terraform plan.
step [5] run terraform apply.
step [6] run terraform destroy to remove. 
*/

# define the provider and argument for the region
provider "aws" {
        region = "us-east-1"
}
# define the resource and a name for the resource
resource "aws_instance" "vm" {
        ami = "ami-0d5eff06f840b45e9" # Amazon machine id 
        subnet_id = "subnet-037e53b146af2a614" # subnet 
        instance_type = "t3.micro" # machine cpu-mem 
        tags = {
                Name = "my-first-tf-node" # tag
        }
}