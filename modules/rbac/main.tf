resource "dbtcloud_group" "dbtcloudgroup" {
  name = var.group_name
}

resource "dbtcloud_user_groups" "members" {
  for_each = toset(var.users)
  user_id = each.value
  group_id = dbtcloud_group.dbtcloudgroup.id
}