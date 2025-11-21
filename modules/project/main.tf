terraform {
  required_version = ">= 1.5.0"
  required_providers {
    dbtcloud = {
        source = "dbt-labs/dbtcloud"
        version = "~> 0.3.10"
    }
  }
}

resource "dbtcloud_project" "dbtcloudprojectname" {
  name = var.project_name
}