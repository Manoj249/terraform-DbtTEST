module "project" {
  source = "../modules/project"
  project_name = var.project_name
}

module "environment" {
  source = "../modules/environment"
  environment_name = var.environment_name
  project_id = module.project.project_id
}

module "rbac" {
  source = "../modules/rbac"
  group_name = var.group_name
  users = var.users
}