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
