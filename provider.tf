# Nitesh_DevOps
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.10.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "nitesh"                 # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "classicpipeline"        # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "nitesh"                 # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
provider "azurerm" {
  subscription_id = "b806f439-4e29-426a-8a67-4ed653958018"
  features {
  }
}