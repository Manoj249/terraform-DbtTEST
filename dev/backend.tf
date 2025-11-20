terraform {
  backend "s3" {
    bucket = "tf-backend-dbt-dev-manoj"
    key = "dbt/dev/terraform.tfstate"
    region = "ap-south-1"
  }
}