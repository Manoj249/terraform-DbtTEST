terraform {
  backend "s3" {
    bucket = "my-terraform-state"
    key = "dbt/dev/terraform.tfstate"
    region = "ap-south-1"
  }
}