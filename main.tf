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
    label       = "my-cluster"
    k8s_version = "1.32"
    region      = "it-mil"
    tags        = ["dev"]

    pool {
        type  = "g6-standard-2"
        count = 3
    }
}
