provider "aws" {
  region = "${var.region}"
}

# New resource for the S3 bucket our application will use.
resource "aws_s3_bucket" "bucket-name" {
  bucket = "bucket-name"
  acl    = "private"
}
