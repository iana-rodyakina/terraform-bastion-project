terraform {
  backend "s3" {
    bucket = "kaizen-yanar"
    key    = "kaizen/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "lock-state"
  }
}
