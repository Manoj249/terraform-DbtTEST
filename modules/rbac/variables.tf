variable "group_name" {
  type = string
}

variable "users" {
  type = list(string)
  description = "List of user IDs to add to the group"
}