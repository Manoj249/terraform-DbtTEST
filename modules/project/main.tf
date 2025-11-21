resource "dbtcloud_project" "dbtcloudprojectname" {
  name = var.project_name
  dbt_version = "1.7.0"
}