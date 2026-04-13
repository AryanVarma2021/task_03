terraform {

  required_providers {
    azurerm = {
      version = ">= 3.110.0, < 4.0.0"
      source  = "hashicorp/azurerm"
    }
  }

  required_version = ">= 1.5.7"
}

provider "azurerm" {

  features {

  }

}


