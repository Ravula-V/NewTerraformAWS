

terraform {

  cloud {
    organization = "icmpcdktest"

    workspaces {
      name = "iCMP"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
  }

  required_version = ">= 0.11.0"
}
provider "aws" {          
          region  = "us-west-2"
          }

     # An example resource that does nothing.
     resource "aws_instance" "app_server" {
          ami           = "ami-830c94e3"
          instance_type = "t2.micro"

          tags = {
            Name = "ExampleTerraformGITSNOW-InstanceByVenky"
           }
        }
