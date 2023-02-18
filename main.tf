

# The configuration for the `remote` backend.
    terraform {
       backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "icmpcdktest"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "iCMP"
         }
       }
     }

     # An example resource that does nothing.
     resource "aws_instance" "app_server" {
          ami           = "ami-830c94e3"
          instance_type = "t2.micro"

          tags = {
            Name = "ExampleTerraformGITSNOW-InstanceByVenky"
           }
        }
