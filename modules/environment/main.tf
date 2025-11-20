resource "dbtcloud_environment" "dbtcloudenvironment" {
  name = var.environment_name
  project_id = var.project_id
  type = var.environment_type
}