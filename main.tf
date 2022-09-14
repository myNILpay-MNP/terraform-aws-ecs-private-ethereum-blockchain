terraform {
  required_providers {
    aws    = ">= 4.0.0"
    local  = "~> 2.1"
    random = "~> 3.1"
  }
}

provider "aws" {
  region = var.region
}

locals {
  common_tags = {
    "EthereumNetworkName" = var.network_name
  }
}