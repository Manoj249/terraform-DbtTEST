terraform {
  required_version = ">= 1.5.0"
  required_providers {
    dbtcloud = {
        source = "dbt-labs/dbtcloud"
        version = "~> 0.3.10"
    }
  }
}

provider "dbtcloud" {
    account_id = var.account_id
    token = var.service_token
}

resource "dbtcloud_project" "dbtcloudprojectname" {
  name = var.project_name
}