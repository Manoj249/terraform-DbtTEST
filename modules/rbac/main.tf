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

resource "dbtcloud_group" "dbtcloudgroup" {
  name = var.group_name
}

resource "dbtcloud_user_groups" "members" {
  for_each = toset(var.users)
  user_id = each.value
  group_ids = dbtcloud_group.dbtcloudgroup.id
}