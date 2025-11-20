resource "dbtcloud_project" "dbtcloudprojectname" {
  name = var.project_name
  dbt_version = var.dbt_version
}