variable "project_name" {
  type = string
}

variable "environment_name" {
  type = string
}

variable "group_name" {
  type = string
}

variable "users" {
  type = list(number)
  description = "list of dbt Cloud user IDs to add into the group"
}
variable "account_id" {
  type = number
}

variable "service_token" {
  type = string
}

variable "environment_type" {
  type = string
  default = "development"
}