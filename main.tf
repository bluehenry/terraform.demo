provider "aws" {
  region = "us-east-1"
}

# New resource for the S3 bucket our application will use.
resource "aws_s3_bucket" "bucket-name" {
  bucket = "bucket-name"
  acl    = "private"
}
