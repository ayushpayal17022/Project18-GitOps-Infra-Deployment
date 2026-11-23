terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

provider "local" {}

resource "local_file" "gitops_demo" {
  filename = "${path.module}/deployment.txt"
  content  = "GitOps deployment triggered successfully"
}
