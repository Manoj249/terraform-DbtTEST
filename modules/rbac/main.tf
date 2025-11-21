terraform {
  required_version = ">= 1.5.0"
  required_providers {
    dbtcloud = {
        source = "dbt-labs/dbtcloud"
        version = "~> 0.3.10"
    }
  }
}

resource "dbtcloud_group" "dbtcloudgroup" {
  name = var.group_name
}

resource "dbtcloud_user_groups" "members" {
  for_each = toset(var.users)
  user_id = each.value
  group_id = dbtcloud_group.dbtcloudgroup.id
}