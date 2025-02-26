terraform {
  required_version = ">= 1.9.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.67.0" 
    }
  }

  cloud { 
    
    organization = "balutbomber" 

    workspaces { 
      name = "tf-prefix-list" 
    } 
  }   
}
