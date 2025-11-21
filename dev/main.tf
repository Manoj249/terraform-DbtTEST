module "project" {
  source = "../modules/project"
  project_name = var.project_name
  account_id = var.account_id
  service_token = var.service_token
}

module "environment" {
  source = "../modules/environment"
  environment_name = var.environment_name
  project_id = module.project.project_id
  account_id = var.account_id
  service_token = var.service_token
}

module "rbac" {
  source = "../modules/rbac"
  group_name = var.group_name
  users = var.users
  account_id = var.account_id
  service_token = var.service_token
}