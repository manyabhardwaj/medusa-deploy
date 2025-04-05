provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "medusa-demo-bucket-1234"
  acl    = "private"
}
