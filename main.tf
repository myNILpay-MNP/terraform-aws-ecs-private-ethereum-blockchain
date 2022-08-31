terraform {
  required_providers {
    aws    = "~> 4.8"
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