variable "environment_name" {
  type = string
}

variable "project_id" {
  type = number
}

variable "environment_type" {
  type = string
  default = "development"
}

variable "account_id" {
  type = number
}

variable "service_token" {
  type = string
}