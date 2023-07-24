terraform {
/*
  cloud {
   organization = "s3curitydojo"

   workspaces {
     name = "test-2"
   }
  }
*/

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
  }
