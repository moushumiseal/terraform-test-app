terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token        = var.github_token
  owner        = var.github_owner
}

resource "github_repository" "test_app" {
  name        = "terraform-test-app"
  description = "A test application provisioned using Terraform"
  visibility  = "public"
  auto_init   = true
}
