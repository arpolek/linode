terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "~> 2.0"
    }
  }
}

provider "linode" {
  token = var.linode_token
}

resource "linode_lke_cluster" "lke-cluster" {
    label       = "dupa123"
    k8s_version = "1.32"
    region      = var.region
    tags        = ["dev"]

    pool {
        type  = "g6-standard-2"
        count = 3
    }
}
