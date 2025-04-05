
provider "aws" {
  region = "us-east-1"
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "example" {
  bucket = "medusa-demo-bucket-${random_id.bucket_id.hex}"
  acl    = "private"
}
